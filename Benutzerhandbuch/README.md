# TranslationGemE — AI-Powered Translation for YAML & ActiveRecord


TranslationGemE was developed as part of a university project in collaboration with Eonum. It aims to automate multilingual support for medical applications.  
This modular and extensible **Ruby** gem is designed to **translate locale YAML files** and **ActiveRecord attributes** using **AI models** like OpenAI’s GPT. It supports other providers (e.g., LLaMA, DeepSeek) through a pluggable architecture.

## Table of Contents

1. [Features](#features)  
2. [Setup](#setup)    
3. [Translation of Locale Files](#translation-of-locale-files)
4. [Translation of active records columns](#translation-of-active-records-columns)
5. [Optional: Configuring Translatable Models](#optional-configuring-translatable-models)  
6. [Using a Custom AI Model](#using-a-custom-ai-model)
7. [Running Tests](#running-tests)
8. [Troubleshooting](#troubleshooting)
9. [Notes on Security](#notes-on-security)  
10.[License](#license)  

---

## Features

- Translate YAML locale files (e.g. `de.yml → it.yml`)
- Translate ActiveRecord attributes (e.g. `name_de → name_it`)
- Modular AI model interface – plug in OpenAI, LLaMA, etc.
- Rake tasks for automated CLI-based usage
- Rails-ready controller function for frontend translations
- Export translated text for human review
- Optional prompt customization with medical context support

---

## Setup

1. Create an API key from your provider's platform. We used the model "OpenAI GPT-4o" on GitHub marketplace
   - https://github.com/marketplace/models/

2. Create a `.env` file in your Rails project’s root directory.

3. Add your API key to the `.env` file:
   ```ini
   AI_API_KEY='YOUR_API_KEY'
   ```

4. Ensure `.env` is listed in your `.gitignore` to avoid committing sensitive information.

5. Open a terminal in the root of the gem project.

6. Build the gem:
   ```bash
   gem build translation_gem_e.gemspec
   ```

7. Install the gem:
   ```bash
   gem install translation_gem_e-0.0.11.gem
   ```

8. In your Rails project’s `Gemfile`, add:
   ```ruby
   gem 'sy18nc', github: 'jbessi/sy18nc', branch: 'master'
   gem 'translation_gem_e', '~> 0.0.11', path: 'path/to/the/gem/root'
   ```

9. Run:
   ```bash
   bundle install
   ```
10. This gem relies on the `sy18nc` gem to manage and synchronize YAML locale files. Make sure to install and configure `sy18nc` properly, as it is required for locale translation features to work correctly.
   
    Run: 
    ```bash
    rails generate sy18nc:install
    ```
    This command creates a configuration file `sy18nc.rb`in `config/initializers`.

11. Configure sy18nc.rb:
    Edit `config/initializers/sy18nc.rb` as follows:
    
    ```ruby
    if Rails.env.development?
      Sy18nc.configure do |c|
        c.base_locale = "de"
        c.locales_dir = "config/locales/"
        c.locales = ["en", "fr", "it"]
      end
    end
    ```
    For more information and customization options, visit: https://github.com/jbessi/sy18nc

12. In your project’s `Rakefile`, add:
    ```ruby
    require 'translation_gem_e'
    ```

13. Run `rake -T` to confirm the tasks:

- `translation_gem_e:translate_active_records[model,base_column,target_column,target_language]`
- `translation_gem_e:translate_locales[path,is_test,context]`

You're now ready to use **TranslationGemE** in your Ruby and Rails projects.

---
### Translation of Locale Files

#### Rake task
`translation_gem_e:translate_locales[path,is_test,context]`

- `path`: path to the YAML file to translate 
- `is_test`: if `true`, output is saved in a preview test file
- `context`: optional translation context 

#### Example
```bash
translation_gem_e:translate_locales[config/locales/fr.yml,true,Use medical language]
```
---
### Translation of Active Records Columns

#### Rake task

`translation_gem_e:translate_active_records[model,base_column,target_column,target_language]`

- `model`: name of the ActiveRecord model 
- `base_column`: column that contains the original text 
- `target_column`: column where the translated text will be written 
- `target_language`: language identifier for the target. `fr`, `en`, `it` and `de` are supported

The parameter `target_language`  is optional if your model includes the `TranslationGemETranslatableModel` module and defines the `translation_gem_e_config` method.

#### Example

```bash
translation_gem_e:translate_active_records[Variable,name_de,name_fr,fr]
```
---

## Optional: Configuring Translatable Models

You can include `TranslationGemETranslatableModel` in ActiveRecord models to define which fields map to which locales and to provide context for translation.

```ruby
class Variable < ApplicationRecord
  include TranslationGemETranslatableModel

  def self.translation_gem_e_config
    {
      'name_de' => 'de',
      'name_fr' => 'fr',
      'name_it' => 'it'
    }
  end

  def self.translation_gem_e_context
    "Some additional context for the AI model."
  end
end
```

---

## Using a Custom AI Model

The default model is OpenAI’s GPT, but you can plug in any custom model as long as it adheres to the interface.

### 1. Create Your Model

In `models/custom_model.rb`:

```ruby
module Models
  class CustomModel < AiModel
    def translate(prompt:, language:, context: nil)
      system_prompt = build_system_prompt(language, context)
      # Add your logic here
    end
  end
end
```

### 2. Register the Model

In `lib/translation_gem_e.rb`, either:

```ruby
TranslationGemE.configure do |config|
  config.ai_model = Models::CustomModel.new
end
```

Or set directly:

```ruby
TranslationGemE.ai_model = Models::CustomModel.new
```

### 3. Update `.env` If Needed

Adjust API credentials or endpoints as required for your model.

---

## Running Tests

This gem includes a suite of automated **RSpec tests** to ensure the functionality of its components.

### Prerequisites

Make sure RSpec is installed. If it's not yet added to your project, run:

```bash
bundle add rspec
```

### Initializing RSpec

You only need to initialize RSpec once:

```bash
bundle exec rspec --init
```

### Running All Tests

To run all test files in the project:

```bash
bundle exec rspec
```

Running a Specific Test File

For example, to run the tests for the ActiveRecord exporter:

```bash
bundle exec rspec spec/ar_translation_exporter_spec
```

To run a specific test example:

```bash
bundle exec rspec spec/locale_prompt_builder_spec.rb --example 'translate_locales'
```

All test files are located in the /spec directory of the gem.

--- 

## Troubleshooting

### Common Issues

#### API Integration

**Issue**: Authentication errors with API calls.
```
OpenAI::AuthenticationError: Incorrect API key provided
```

**Solution**: 
- Verify your API key in the `.env` file
- Ensure environment variables are loaded properly

---

#### Gem Dependencies

**Issue**: Dependency conflicts during installation.

**Solution**:
- Use the specified sy18nc version from GitHub
- Run `bundle update` to resolve conflicts

---

#### Translation Problems

**Issue**: Missing translations in YAML files.

**Solution**:
- Verify base locale file contains all required keys
- Check that sy18nc has synchronized keys correctly

---

#### AI Model Errors

**Issue**: Rate limit or timeout errors.

**Solution**:
- Break large translation jobs into smaller batches
- Implement retry logic for API calls

---

#### ActiveRecord Issues

**Issue**: Model translations not working.

**Solution**:
- Confirm model includes `TranslationGemETranslatableModel`
- Verify column mappings in `translation_gem_e_config`

---

#### Large Documents

**Issue**: Context length exceeded errors.
```
OpenAI::ContextLengthExceededError: This model's maximum context length...
```

**Solution**:
- Translate files in smaller chunks
- Use models with larger context windows if available

For other issues, please open a ticket on our GitHub repository with detailed reproduction steps.


## Notes on Security

- Never commit `.env` or API keys to version control.
- For production environments, consider using environment variables or Rails credentials for better security.

---

## License
This project is licensed under the MIT License.

![MIT License](https://img.shields.io/badge/license-MIT-green)


