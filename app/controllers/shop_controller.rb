# class ShopController < ApplicationController

#    def index
#     @shops = Shop.all
#   end

#   def show
#     @shop = Shop.find(params[:id])
#   end

#   def new
#     @shop = Shop.new
#   end

#   def create
#     @shop = Shop.new(shop_params)

#     if @shop.save
#       redirect_to @shop
#     else
#       render :new, status: :unprocessable_entity
#     end
#   end

#   def edit
#     @shop = Shop.find(params[:id])
#   end

#   def update
#     @shop = Shop.find(params[:id])

#     if @shop.update(shop_params)
#       redirect_to @shop
#     else
#       render :edit, status: :unprocessable_entity
#     end
#   end

#   private
#     def shop_params
#       params.require(:shop).permit(:title, :body)
#     end

# end
