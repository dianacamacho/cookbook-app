class RecipesController < ApplicationController

  def meal
    @recipe = Recipe.last
  end

  def every_meal
    @recipes = Recipe.all
  end

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
  end

end
