class RecipeController < ApplicationController

  def index
    render json: Recipe.all.to_json
  end

  def create
  end

  def destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :instructions)
  end

end
