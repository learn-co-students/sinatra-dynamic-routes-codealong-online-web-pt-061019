require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do 
    @last_response = params[:name]
    "Goodbye, #{@last_response}."
  end
  
  get '/multiply/:num1/:num2' do
    @last_response = params[:num1].to_i * params[:num2].to_i
    "#{@last_response}"
    
  end

end