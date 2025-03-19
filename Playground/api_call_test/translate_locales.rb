require_relative 'api_call_test'

# Translates locales and returns translated values in an array with their corresponding paths and keys.
# Takes translation_tasks as an array and restructures them as a prompt usable by ChatGPT or other LLMs.
module TranslateLocales
  def self.translate_locales(translation_tasks)
    prompt = ''
    translation_tasks.each do |task| # set up prompt string. Each line contains one value
      prompt += "#{task[1]}\\n"
    end
    response = ApiCallTest.chatgpt_request(prompt)
    assign_translations_to_paths(response, translation_tasks)
    return translation_tasks
  end

  # Inserts the translated values into the translation_tasks array so that they can be accessed via their
  # corresponding paths and keys.
  def self.assign_translations_to_paths(response, translation_tasks)
    i = 0
    response.split("\n").each do |line|
      translation_tasks[i][1] = line # insert translated values in array at corresponding paths
      i += 1
    end
  end
end
