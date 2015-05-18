class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def edit
    @recipe = Recipe.find params[:id]
  end

  def update
    @recipe = Recipe.find params[:id]

    if @recipe.update recipe_params
      redirect_to recipes_url
    else
      render :edit
    end
  end

  def new
    @recipe = Recipe.new
    4.times { @recipe.ingredients.build }
  end

  def create
    @recipe = Recipe.new recipe_params
    
    if @recipe.save
      redirect_to recipes_url
    else
      render :new
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, ingredients_attributes: [:id, :name, :_destroy])
  end

end
