# TranslationGemE — AI-Powered Translation for YAML & ActiveRecord

A modular and extensible **Ruby** gem designed to **translate locale YAML files** and **ActiveRecord attributes** using **AI models** like OpenAI’s GPT. It supports other providers (e.g., LLaMA, DeepSeek) through a pluggable architecture.

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
   GITHUB_TOKEN='YOUR_API_KEY'
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
   
    Generate sy18nc configuration:
    ```bash
    rails generate sy18nc:install
    ```
    This command creates a configuration file in `config/initializers`.

11. Configure sy18nc:
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
    For more information and customization options, visit: ``https://github.com/jbessi/sy18nc`

12. In your project’s `Rakefile`, add:
    ```ruby
    require 'translation_gem_e'
    ```

13. Run `rake -T` to confirm the tasks:
    - `translation_gem_e:translate_active_records[model,base_column,target_column,target_language]`
    - `translation_gem_e:translate_locales[path,is_test,context]`

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



## Notes on Security

- Never commit `.env` or API keys to version control.
- For production environments, consider using environment variables or Rails credentials for better security.

---

You're now ready to use **TranslationGemE** in your Ruby and Rails projects 