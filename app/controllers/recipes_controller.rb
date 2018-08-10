class RecipesController < ProtectedController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    @recipes = current_user.recipes.all

    render json: @recipes
  end

  # GET /recipes/1
  def show
    render json: @recipe
  end

  # POST /recipes
  def create
    @recipe = current_user.recipes.build(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = current_user.recipes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:id, :notes, :name, :instructions, :alcoholic, :img, :glass, :ingredient1, :ingredient2, :ingredient3, :ingredient4, :ingredient5, :ingredient6, :ingredient7, :ingredient8, :ingredient9, :ingredient10, :ingredient11, :ingredient12, :ingredient13, :ingredient14, :ingredient15)
    end
end
