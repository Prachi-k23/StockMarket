class HomepageController < ApplicationController
  def index

  	@api = StockQuote::Stock.new(api_key: 'pk_cfc45b2287ed41b1bdee623b065a8be7') 

  	if params[:ticker] == "" 				# Nothing error handling
  		@nothing = "Hey, you forgot to enter a symbol"

  	elsif params[:ticker]
  		@stock = StockQuote::Stock.quote(params[:ticker]) 

  	# if !@Stock 						Junk error handling
  	#	@error = "Hey! That symbol does not exist. Please try again."
  	
  	end

  end
  def about
  end
end
