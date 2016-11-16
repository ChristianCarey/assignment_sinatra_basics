require 'sinatra'
require 'sinatra/multi_route'

enable :sessions

helpers do 
  
  GAME = {
    "rock"     => "scissors",
    "scissors" => "paper",
    "paper"    => "rock"
  }

  def random_choice
  end

  def decide_winner(choice)    
    choice = params[:choice]
    cpu_choice = random_choice
    case game[choice]
    when 
  end
end

route :get, :post, "/boss" do
  if request.request_method == "POST"
    speech = params[:speech]
  end
  erb :boss, :locals => { :speech => speech }
end

route :get, :post, "/rps" do
  if request.request_method == "POST"
    decide_winner(choice)
  end
  erb :rps, :locals => { :choice => choice }
end

