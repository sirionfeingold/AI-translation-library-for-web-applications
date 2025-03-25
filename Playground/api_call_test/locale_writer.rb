# Writes translated values in a locale-yaml-file
module LocaleWriter
  def self.write_locales(translation_tasks, path)
    file = File.readlines(path) # load YAML file as text file
    file = update_yaml(translation_tasks, file) # updates the locale file with the translated values from translation_tasks
    File.open('locales/it_update.yml', 'w') { |f| f.puts(file) } # Save the file
  end

  # Updates the file line by line and returns the updated file
  def self.update_yaml(translation_tasks, file)
    translation_tasks.each do |task|
      line_index = 0
      task[0].each do |key|
        until file[line_index].split(':')[0].strip == (key)
          line_index += 1
        end
      end
      char_index = file[line_index].index(':') + 1 # finds index of ':'
      file[line_index] = "#{file[line_index].split(':', 2)[0]}:\n" # removes old value
      file[line_index].insert(char_index, " \"#{task[1]}\" #AI-Translation") # inserts the new value after
    end
    file # return value
    end
end
