  # frozen_string_literal: true

  class ItemsController < ProtectedController
    before_action :set_item, only: %i[show update destroy]
    before_action :set_category, only: %i[create]
    # GET /items
    def index
      # @items = Item.all.order('name ASC')
      @items = current_user.items.all.order('name ASC')
      render json: @items
    end

    # GET /items/1
    def show
      render json: @item
    end

    # POST /items
    def create
      @item = current_user.items.build(item_params)
      if @category && @item.save
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

    def set_category
      category_id = item_params[:category_id]
      @category = current_user.categories.find(category_id)
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:name, :description, :current_quantity, :alert_quantity, :quantity_purchased, :in_order_list, :category_id)
    end
  end
