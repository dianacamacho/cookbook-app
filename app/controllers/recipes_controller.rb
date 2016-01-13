class RecipesController < ApplicationController

  def meal
    @recipe = Recipe.last
  end

  def every_meal
    @recipes = Recipe.all
  end

end
