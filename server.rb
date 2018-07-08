require 'sinatra'

set :port, 8080

post '/' do
  body = read_body(request)
  puts(body)
end

private

def read_body(request)
  JSON.parse request.body.read
end
