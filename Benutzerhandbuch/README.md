# TranslationGemE — AI-Powered Translation for YAML & ActiveRecord


TranslationGemE was developed as part of a university project in collaboration with Eonum. It aims to automate multilingual translation for medical applications.  
This modular and extensible **Ruby** gem is designed to **translate locale YAML files** and **ActiveRecord attributes** using **AI models** like OpenAI’s GPT. It supports other providers (e.g., LLaMA, DeepSeek) through a pluggable architecture.

## Table of Contents

1. [Features](#features)  
2. [Setup](#setup)    
3. [Translation of Locale Files](#translation-of-locale-files)
4. [Translation of Active Records Columns](#translation-of-active-records-columns)
5. [Optional: Configuring Translatable Models](#optional-configuring-translatable-models)  
6. [Using a Custom AI Model](#using-a-custom-ai-model)
7. [Integration in Ruby On Rails web-application](#integration-in-ruby-on-rails-web-application)
8. [Running Tests](#running-tests)
9. [Troubleshooting](#troubleshooting)
10. [Notes on Security](#notes-on-security)  
11. [License](#license)  

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
   https://github.com/marketplace/models/
   
   Select the model (e.g. "OpenAI GPT-4o"). Select **`Use this model`**, choose the **`GitHub Free`** plan, then select the **`For general use`** option when generating the API token.

3. Create a `.env` file in your Rails project’s root directory.

4. Add your API key to the `.env` file:
   ```ini
   AI_API_KEY='YOUR_API_KEY'
   ```

5. Ensure `.env` is listed in your `.gitignore` to avoid committing sensitive information.

6. Open a terminal in the root of the gem project.

7. Build the gem:
   ```bash
   gem build translation_gem_e.gemspec
   ```

8. Install the gem:
   ```bash
   gem install translation_gem_e-0.0.11.gem
   ```

9. In your Rails project’s `Gemfile`, add:
   ```ruby
   gem 'sy18nc', github: 'jbessi/sy18nc', branch: 'master'
   gem 'translation_gem_e', '~> 0.0.11', path: 'path/to/the/gem/root'
   ```

10. Run:
   ```bash
   bundle install
   ```
11. This gem relies on the `sy18nc` gem to manage and synchronize YAML locale files. Make sure to install and configure `sy18nc` properly, as it is required for locale translation features to work correctly.
   
    Run: 
    ```bash
    rails generate sy18nc:install
    ```
    This command creates a configuration file `sy18nc.rb` in `config/initializers`.

12. Edit `config/initializers/sy18nc.rb` as follows:
    
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

13. In your project’s `Rakefile`, add:
    ```ruby
    require 'translation_gem_e'
    ```

14. Run `rake -T` to confirm the tasks:

- `rake translation_gem_e:translate_active_records[model,base_column,target_column,target_language]`
- `rake translation_gem_e:translate_locales[path,target_language,is_test,context]`

You're now ready to use **TranslationGemE** in your Ruby and Rails projects.

---
### Translation of Locale Files

#### Rake task
`rake translation_gem_e:translate_locales[path,target_language,is_test,context]`

- `path`: Path to the YAML file to be translated. Required.

- `target_language`: Target language code (for exemple fr, en). *Optional*, defaults to `de`.

- `is_test`: If `true`, saves the result as a new test file (e.g. `fr_test_1234.yml`) in `translation_gem_e_output/`. Defaults to `false`.

- `context`: Optional translation context (for exemple domain-specific like medical). *Optional*, defaults to `nil`.

#### Example
```bash
rake translation_gem_e:translate_locales['config/locales/fr.yml','fr','true','Use medical language']
```
---
### Translation of Active Records Columns

#### Rake task

`rake translation_gem_e:translate_active_records[model,base_column,target_column,target_language]`

- `model`: name of the ActiveRecord model
  
- `base_column`: column that contains the original text
  
- `target_column`: column where the translated text will be written
   
- `target_language`: language identifier for the target. `fr`, `en`, `it` and `de` are supported

The parameter `target_language` is optional if your model includes the `TranslationGemETranslatableModel` module and defines the `translation_gem_e_config` method.

#### Example

```bash
rake translation_gem_e:translate_active_records['Variable','name_de','name_fr','fr']
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

## Integration in Ruby On Rails web-application
You can use `TranslationGemE` for a Ruby on Rails web-application, to handle interface frontend translations.

### 1. Add translate function in controller
Implement a new function called `translate()` in `controllers/variables_controller.rb`

```ruby
def translate
    fields    = params[:fields] || {}
    from_lang = params[:from] || 'de'
    to_lang  = %w[de fr it en] - [from_lang]

    result = TranslationGemE.translate_fields(
      fields: fields,
      from: from_lang,
      to: to_lang,
      context: "Medical form field labels"
    )
    render json: result
  end
```
Here you can use the `translate_fields()` function,
which translates a given hash of fields from one language into multiple target languages.

### 2. Update `config/routes.rb`
Add the following code:
```ruby
resources :variables do
    # adds a custom POST route: /variables/translate
    # this calls the 'translate' action on the controller and it applies to the collection (not a specific variable)
    post :translate, on: :collection
  end
```

### 3. Add new JavaScript file 'assets/javascript/translate.js'

```js
// Automatically translates the "Name" and "Description" form fields
// from the current language (German, French, or Italian)
// into the other two supported languages when the "Translate" button is clicked.
// The translated values are inserted directly into the corresponding input fields.

// wait for the DOM to be fully loaded
document.addEventListener('DOMContentLoaded', () => {
    const translateButton = document.getElementById('translate-button');
    const spinner = document.getElementById('translation-spinner');
    if (!translateButton) return; // Exit if translation button is not found

    // add click event listener to the translate button
    translateButton.addEventListener('click', () => {
        // get current locale from <html lang="...">
        const currentLocale = document.documentElement.lang || 'de';

        // get the values from the corresponding input fields
        const nameValue = document.getElementById(`variable_name_${currentLocale}`)?.value || '';
        const descriptionValue = document.getElementById(`variable_description_${currentLocale}`)?.value || '';

        // Show spinner
        spinner.classList.remove('d-none');

        // send post request to the translate endpoint
        fetch('/variables/translate', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content // rails CSRF protection
            },
            body: JSON.stringify({
                fields: {
                    name: nameValue,
                    description: descriptionValue
                },
                from: currentLocale
            })
        })
            .then(res => res.json()) // Parse JSON response
            .then(data => {

                // loop through all expected language and update field if present
                ['de', 'fr', 'it', 'en'].forEach(lang => {
                    if (lang === currentLocale) return; // skip source language

                    if (data[lang]){
                        const nameTarget = document.getElementById(`variable_name_${lang}`);
                        const descriptionTarget = document.getElementById(`variable_description_${lang}`);
                        if (nameTarget && data[lang]['name']) nameTarget.value = data[lang]['name'];
                        if (descriptionTarget && data[lang]['description']) descriptionTarget.value = data[lang]['description'];
                    }
                });
            })
            .catch(err => {
                // handle errors
                console.error('Translation failed:', err);
            })
            .finally(() => {
                spinner.classList.add('d-none');
            });
    });
});
```

### 4. Add Translation-Button in 'views/variables/_form.html.haml'

```haml
-# The following button triggers the JavaScript translation logic.
-# Make sure to include input fields with the following ID pattern:
-#   - 'variable_name_de', 'variable_name_fr', 'variable_name_it', 'variable_name_en'
-#   - 'variable_description_de', etc.
-# These IDs are required by the JS logic in 'translate.js'.

.col-lg-10.text-end
= button_tag t('translate'), type: 'button', class: 'btn btn-outline-success', id: 'translate-button'
.row.mt-3
.col-lg-12
  #translation-spinner.d-none.text-primary.text-center
    %div.spinner-border{ role: "status" }
      %span.sr-only= t('loading')
```
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

### Running a Specific Test File

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
- Verify your API key in the `.env` file.
- Ensure environment variables are loaded properly.

---

#### Gem Dependencies

**Issue**: Dependency conflicts during installation.

**Solution**:
- Use the specified sy18nc version from GitHub.
- Run `bundle update` to resolve conflicts.

---

#### Translation Problems

**Issue**: Missing translations in YAML files.

**Solution**:
- Verify base locale file contains all required keys.
- Check that sy18nc has synchronized keys correctly.

---

#### AI Model Errors

**Issue**: Rate limit or timeout errors.

**Solution**:
- Break large translation jobs into smaller batches.
- Implement retry logic for API calls.

---

#### ActiveRecord Issues

**Issue**: Model translations not working.

**Solution**:
- Confirm model includes `TranslationGemETranslatableModel`.
- Verify column mappings in `translation_gem_e_config`.

---
 
#### Large Documents

**Issue**: Context length exceeded errors.
```
OpenAI::ContextLengthExceededError: This model's maximum context length was exceeded
```

**Solution**:
- Translate files in smaller chunks.
- Use models with larger context windows if available.

For other issues, please open a ticket on our GitHub repository with detailed reproduction steps.


## Notes on Security

- Never commit `.env` or API keys to version control.
- For production environments, consider using environment variables or Rails credentials for better security.

---

## License
This project is licensed under the MIT License.

![MIT License](https://img.shields.io/badge/license-MIT-green)


