# Open AI limits the rate of requests to the currently used model (maybe for all models, I don't know)
# As this case is not handled by the code; it leads to strange error
# TODO: Implement system to handle unexpected responses / formats

require 'net/http'
require 'uri'
require 'json'
require 'dotenv/load'

## Loads .env file --> your .env file should only contain one line
# Formatted like this: API_KEY='YOUR KEY'
Dotenv.load(File.expand_path('../../../../.env', __FILE__))

## Assigns API_KEY; alternatively, you could directly assign the key as a string.
# In that case, you need to make sure not to upload it to GitHub.
API_KEY = ENV['API_KEY']

if API_KEY.nil? || API_KEY.empty?
  abort('Error: Missing API_KEY in .env file')
end

module ApiCallTest # Unsure if 'module' is used in the right way/place --> I guess it is
  def self.chatgpt_request(prompt)
    # 'self' means that chatgpt_request is a 'class method' instead of an 'instance method'.
    # Unsure what this means exactly...

    uri = URI('https://api.openai.com/v1/chat/completions')
    http = Net::HTTP.new(uri.host, uri.port)
    http.read_timeout = 300 # set timeout at five minutes
    http.use_ssl = true

    request = Net::HTTP::Post.new(uri)
    request['Content-Type'] = 'application/json'
    request['Authorization'] = "Bearer #{API_KEY}"

    ## This needs improvement and testing
    request.body = {
      model: 'gpt-4o-mini',
      messages: [
        {
          role: 'system',
          content: "You are a translator. Your task is to provide translations in Italian. Your response must always
                    be in JSON format with only one key: 'translation'. The value of 'translation' should be the Italian
                    translation of the provided text. Please don't change the newline characters. Please use professional medical terminology as used by doctors.
                    Ensure the translation is clear, accurate, and formal. Do not include any other text outside of the
                    JSON structure. Do NOT mark the response as JSON by using '''JSON."
        },
        {
          role: 'user',
          content: prompt
        }
      ],
      temperature: 0.1 ## Should temperature be '0'? Or is '0' some special value?
    }.to_json

    response = http.request(request)
    translation = JSON.parse(response.body)

    ## puts translation

    content = JSON.parse(translation.dig('choices', 0, 'message', 'content'))

    # puts("Prompt: #{prompt}")
    # puts("Translation: #{content.dig('translation')}")

    content.dig('translation') #return value
  end
end

# Example usage:
# ApiCallTest.chatgpt_request('Innenbandriss')
