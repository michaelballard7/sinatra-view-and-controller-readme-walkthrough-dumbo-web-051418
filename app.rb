require_relative 'config/environment'

# Note: Instance variables are ONLY passed from the controller method where they are created to the view that is rendered, not between controller methods.

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    # I have passed the info collected from the form to the post controller
    original_str = params["string"]
    new_str = original_str

    # I must make the information accessible by my database of my view
    @reversed_string = new_str.reverse

    erb :reversed
  end




  get '/friends' do
    # Write your code here!
    @friends=  ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end
