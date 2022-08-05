class RecipeController < ApplicationController

  def index
    @recipies = Recipe.all
    render json: @recipies
  end

  def create
    @recipe = Recipe.create!(recipe_params)
    render json: @recipe
  end

  def add_ingredient
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.add_ingredient(Substance.find(params[:substance_id]), params[:amount])
    render json: @recipe
  end

  def substances
    render json: Substance.all
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :instructions)
  end

end
