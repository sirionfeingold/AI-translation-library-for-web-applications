# frozen_string_literal: true

require 'yaml'

# Reads locales from a YAML file and creates an Array containing tuples of paths and keys that are marked with '# FIXME'
# Requires the file to be loaded twice, once as YAML to access the keys and once as text to access the fixme-comments
module FixmeFinder
  def self.read_locale(path)

    locale = YAML.load_file(path) # initialize YAML file.
    file = File.readlines(path) # initialize text file.
    all_fixme_paths = []
    get_fixme_keys(locale, file, all_fixme_paths) # Ruby can directly access all_fixme_paths; no return value needed
    all_fixme_paths # Array to be returned
  end


  # Recursively adds path to all 'fixme'-keys to an Array.
  def self.get_fixme_keys(locale, file, all_paths, key_index = 0, line_index = 1, path = [])

    keys = locale.keys

    if true_if_fixme(file, line_index)
      path = get_fixme_yaml_path(keys[key_index], path)
      translation_task = [path, locale[keys[key_index]]] # translation tasks are tuples of a path and a value
      all_paths << translation_task
    end

    if locale[keys[key_index]].is_a?(Hash)
      line_index = get_fixme_keys(locale[keys[key_index]], file, all_paths, 0, line_index + 1, get_fixme_yaml_path(keys[key_index], path))
    end


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

  # Returns an array containing the path to a YAML-key.
  # Adds key to the path without changing the path provided as an argument.
  def self.get_fixme_yaml_path(key, path = [])
    temp_path = path.clone
    temp_path << key
  end

end


