# TranslationGemE — AI-Powered Translation for YAML & ActiveRecord

A modular and extensible **Ruby** gem designed to **translate locale YAML files** and **ActiveRecord attributes** using **AI models** like OpenAI’s GPT. It supports other providers (e.g., LLaMA, DeepSeek) through a pluggable architecture.

---

## Features

- Translate YAML locale files (e.g., `de.yml → it.yml`)
- Translate ActiveRecord attributes (e.g., `name_de → name_it`)
- Modular AI model interface – plug in OpenAI, LLaMA, etc.
- Rake tasks for automated CLI-based usage
- Rails-ready controller function for frontend translations
- Export translated text for human review
- Optional prompt customization with medical context support

---

## Setup

1. Create an API key (e.g., for OpenAI GPT-4o) from your provider's platform.

2. Create a `.env` file in your project’s root directory.

3. Add your API key to the `.env` file:
   ```ini
   API_KEY='your_actual_api_key_here'
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

10. Generate sy18nc configuration:
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

## Integration with Ruby on Rails Frontend

You can integrate TranslationGemE in your Rails app's UI.

### 1. Add a Controller Action

In `variables_controller.rb`:

```ruby
def translate
  fields    = params[:fields] || {}
  from_lang = params[:from] || 'de'
  to_langs  = %w[de fr it en] - [from_lang]

  result = TranslationGemE.translate_fields(
    fields: fields,
    from: from_lang,
    to: to_langs,
    context: "Medical form field labels"
  )

  render json: result
end
```

### 2. Add Frontend JavaScript

```js
document.addEventListener('DOMContentLoaded', () => {
  const translateButton = document.getElementById('translate-button');
  const spinner = document.getElementById('translation-spinner');
  if (!translateButton) return;

  translateButton.addEventListener('click', () => {
    const currentLocale = document.documentElement.lang || 'de';
    const nameValue = document.getElementById(`variable_name_${currentLocale}`)?.value || '';
    const descriptionValue = document.getElementById(`variable_description_${currentLocale}`)?.value || '';

    spinner.classList.remove('d-none');

    fetch('/variables/translate', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
      },
      body: JSON.stringify({
        fields: { name: nameValue, description: descriptionValue },
        from: currentLocale
      })
    })
      .then(res => res.json())
      .then(data => {
        ['de', 'fr', 'it', 'en'].forEach(lang => {
          if (lang === currentLocale) return;
          const nameTarget = document.getElementById(`variable_name_${lang}`);
          const descriptionTarget = document.getElementById(`variable_description_${lang}`);
          if (nameTarget && data[lang]?.name) nameTarget.value = data[lang].name;
          if (descriptionTarget && data[lang]?.description) descriptionTarget.value = data[lang].description;
        });
      })
      .catch(err => console.error('Translation failed:', err))
      .finally(() => spinner.classList.add('d-none'));
  });
});
```

---

## Notes on Security

- Never commit `.env` or API keys to version control.
- For production environments, consider using environment variables or Rails credentials for better security.

---

You're now ready to use **TranslationGemE** in your Ruby and Rails projects 🚀