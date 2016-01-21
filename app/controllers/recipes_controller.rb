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
    @recipe = Recipe.find(params[:id])

    @ingredient_list = @recipe.ingredients.split(", ")
    @directions_list = @recipe.directions.split(", ")
    
  end

  def new
  end

  def create
    @recipe = Recipe.create({title: params[:title], chef: params[:chef], ingredients: params[:ingredients], directions: params[:directions]})
  
    redirect_to "/"
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update 
    @recipe = Recipe.find(params[:id])
    @recipe.update({title: params[:title], chef: params[:chef], ingredients: params[:ingredients], directions: params[:directions]})
  
    flash[:success] = "Recipe updated"

    redirect_to "/recipes/#{@recipe.id}"
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    flash[:success] = "Good job deleting recipe"
    flash[:warning] = "Recipe deleted"

    redirect_to "/"
  end



end
