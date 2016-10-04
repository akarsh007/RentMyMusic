class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]


  def index
    @categories = Category.get_name_from_parent_list
    render json: @categories
  end
  def edit

  end
=begin
  def generate_parent_list
    @categories = Category.generate_parent_list
    redirect_to action: "index"
  end
=end
  def edit_immediate_parent_list
  end

  def generate_parent_list
    @categories = Category.generate_parent_list
    render json: @categories
  end
  # GET /categories/1
  def show
    render json: @category
  end

  # POST /categories
  def create
    @category = Category.new(category_params)
    @response = {}
    if @category.save
      Category.generate_parent_list
      @response[:status] = 200
      @response[:category] = @category.as_json

    else
      @response[:status] = 500
      @response[:category] = @category.errors.full_messages
    end
    render json: @response
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def category_params
    params.require(:category).permit(:name, immediate_parent_list: [], parent_list: [])
  end
end
