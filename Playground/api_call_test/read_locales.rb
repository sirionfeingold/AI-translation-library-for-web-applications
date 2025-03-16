# frozen_string_literal: true

require 'yaml'

# Reads locales from a yaml file and returns them as a yaml file that can be accessed
module ReadLocales
  def self.read_locale(path)

    locale = YAML.load_file(path)
    file = File.readlines(path)
    all_fixme_paths = []
    get_fixme_keys(locale, file, all_fixme_paths) # Ruby can directly access all_fixme_paths; no return value needed
    puts all_fixme_paths
  end


  # Iterates through each line of a file while simultaneously reading the corresponding yaml-keys.
  # Returns line_index
  def self.get_fixme_keys(locale, file, all_paths, key_index = 0, line_index = 1, path = [])

    keys = locale.keys

    if true_if_fixme(file, line_index)
      # puts keys[key_index]
      all_paths << get_fixme_yaml_path(keys[key_index], path) # This directly manipulates the array, not just the instance variable
    end

    if locale[keys[key_index]].is_a?(Hash)
      line_index = get_fixme_keys(locale[keys[key_index]], file, all_paths, 0, line_index + 1, get_fixme_yaml_path(keys[key_index], path))
    end

    # return line_index if key_index + 1 > keys.length - 1 # Why this? Why key_index + 1?

    if key_index < keys.length - 1 # if level contains at least one more key
      return get_fixme_keys(locale, file, all_paths, key_index + 1, line_index + 1, path)
      else
        return line_index
    end
  end

  # Returns True if a line includes the '# Fixme'-String
  def self.true_if_fixme(file, line_index)
    return true if file[line_index].include? '# FIXME'

    false
  end

  def self.get_fixme_yaml_path(key, path = [])
    temp_path = path.clone
    temp_path << key
  end

end


