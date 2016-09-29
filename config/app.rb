# gems and classes...
require 'bundler'
Bundler.require

class SinatraReact < Sinatra::Base
    
    # configure sinatra app
    set :root, Dir['./app']
    set :public_folder, 'public'
    
    # Public folder 
    get '/' do
      File.read(File.join('public', 'index.html'))
    end

end