require 'sinatra'
require 'pry'

set :port, 8080

post '/getQuote' do
  body = read_body(request)

  if body["action"] == "getQuote"
    response = get_gadget_quote(body)
  end
  response
end

private

def get_gadget_quote(request_body)
  example_response_gadget_quote
end

def read_body(request)
  JSON.parse(request.body.read.gsub('\"', '"'))
end

# hardcoded example response for gadget quote
# NOTE: Root will return an array of these
def example_response_gadget_quote
  {
    "package_name": "Theft + comprehensive",
    "sum_assured": 1199900,
    "base_premium": 14999,
    "suggested_premium": 18749,
    "created_at": "2017-10-12T19:30:45+02:00",
    "quote_package_id": "f4397823-db4a-4d6a-a06b-08e1a2a3172c",
    "module": {
        "type": "root_gadgets",
        "make": "Apple",
        "model": "iPhone 6S 64GB LTE"
    }
  }.to_json
end