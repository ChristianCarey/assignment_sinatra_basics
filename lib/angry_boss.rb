require 'sinatra'
require 'sinatra/reloader'

get "/boss" do
  erb :index, :locals => { :speech => session[:speech]}
end

post "/boss" do
  session[:speech] = params[:speech]
  redirect("/boss")
end