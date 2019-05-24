class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    # find me the instance of cocktail that matches the ID found in the URL params
    # params are parameters (a hash) that gets passed along with our HTTP requests
    #
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to cocktail_path(@rcocktail)
    else
      render :new
    end
  end
end
