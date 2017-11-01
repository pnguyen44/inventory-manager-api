# frozen_string_literal: true

class ItemsController < ProtectedController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  def index
    # @items = Item.all
    @items = current_user.items.all.order('id ASC')
    render json: @items
  end

  # GET /items/1
  def show
    render json: @item
  end

  # POST /items
  def create
    @item = current_user.items.build(item_params)

    if @item.save
      render json: @item, status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      # render json: @item
      head :no_content
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_item
    # @item = Item.find(params[:id])
    @item = current_user.items.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def item_params
    params.require(:item).permit(:name, :description, :currentQuanity, :alertQuanity, :quanityPurchased, :inShoppingList, :category_id)
  end
end
