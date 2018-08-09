class RandomController < ApplicationController

  # GET /random
  def index
    @random = HTTParty.get('https://www.thecocktaildb.com/api/json/v1/1/random.php')
    render json: @random
  end

end
