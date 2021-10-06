require "sinatra"
require "sinatra/reloader" if development?

# set :port, 1234
# set :bind, "0.0.0.0"

get "/" do
  "hello!"
end
