class CatController < ApplicationController
  def index
    @cat_array = Cat.all
    @orders_in_cart = Order.where(cart_id:current_user.cart.id).count
    puts @orders_in_cart
  end

  def show
    @cat = Cat.find(params[:id])
  end

end