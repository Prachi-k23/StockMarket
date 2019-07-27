class HomepageController < ApplicationController
  def index

  	@api = StockQuote::Stock.new(api_key: 'pk_cfc45b2287ed41b1bdee623b065a8be7') 

  	if params[:ticker] == ""
      @nothing = "Hey! You Forgot To Enter A Symbol"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      if !@stock
        @error = "Hey ! That symbol does not exist"
      end

    end

  end
  def about
  end
end
