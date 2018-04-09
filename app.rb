require "sinatra"

get "/" do 
	erb :home
end

post "/" do
	@questionNumber = params[:questionNumber]
	
	if params[:selection] == "earth"
		erb :earth
	elsif params[:selection] == "erlang"
		erb :erlang
	elsif params[:selection] == "saturn"
		erb :saturn
	elsif params[:selection] == "jupiter"
		erb :jupiter
	elsif params[:selection] == "mars"
		erb :mars
	else
		erb :home	
	end		
end	

post "/earth" do
	@questionNumber = params[:questionNumber].to_i + 1
	@selection = params[:selection]
	
	if params[:questionNumber] == "1" 
		if params[:selection] == "stay"
			erb :earth
		elsif params[:selection] == "leave"
			erb :home
		else 
			erb :earth
		end
	else
		erb :earth
	end
end

post "/saturn" do
    @questionNumber = params[:questionNumber].to_i + 1
    @selection = params[:selection]
    @generated_number = rand(10)
    
    if params[:questionNumber] == "1"
        if params[:selection] == "stay"
            erb :saturn
        elsif params[:selection] == "leave"
            erb:home
        else
            erb:saturn
        end
    else
        erb:saturn
    end
end
 
get "/about" do
	erb :about
end


get "/team" do
	erb :team
end
