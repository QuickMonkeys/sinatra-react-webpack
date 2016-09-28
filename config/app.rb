# gems and classes...
require 'bundler'

Bundler.require
$: << File.expand_path('../', __FILE__)
Dir['./app/**/*.rb'].sort.each { |file| require file }

# configure sinatra app
set :root, Dir['./app']
#set :erb, :layout => :'layouts/application'

set :public_folder, 'public'

# Public folder 
get '/' do
  File.read(File.join('public', 'index.html'))
end