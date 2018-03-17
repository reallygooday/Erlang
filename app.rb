require "sinatra"

get "/" do
	erb :home
end

get "/about" do
	erb :about
end


get "/team" do
	erb :team
end