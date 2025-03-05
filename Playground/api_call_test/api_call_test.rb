require 'net/http'
require 'uri'
require 'json'
require 'dotenv/load'

## loads .env file --> your .env file should only contain one line
# formatted like this : API_KEY='YOUR KEY'
Dotenv.load(File.expand_path('../../.env', __FILE__))

## Assigns API_KEY; alternatively you could directly assign the key as a string.
# In that case, you need to make sure not to upload it to GitHub though...
API_KEY = ENV['API_KEY']

if API_KEY.nil? || API_KEY.empty?
  abort('Error: Missing API_KEY in .env file')
end

def chatgpt_request(prompt)

  uri = URI('https://api.openai.com/v1/chat/completions')
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true

  request = Net::HTTP::Post.new(uri)
  request['Content-Type'] = 'application/json'
  request['Authorization'] = "Bearer #{API_KEY}"

  ## This needs improvement and testing
  request.body = {
    model: 'gpt-4o-mini',
    messages: [
      {
        role: 'system', content: 'You are a translator. You always answer in JSON with <translation> as the only
  category. You will receive input text in german and output an english translation. Please use specialized medical terms.',
      },
      {
      role: 'user', content: prompt,
    }],
    temperature: 0.1, ## Should temperature be '0'? Or is '0' some special value?
  }.to_json

  response = http.request(request)
  translation = JSON.parse(response.body)
  content = JSON.parse(translation.dig('choices', 0, 'message', 'content'))
  puts(prompt)
  puts content.dig('translation')


end

# Example usage:
chatgpt_request('Innenbandriss')
