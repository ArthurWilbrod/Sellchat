class CatController < ApplicationController
  def index
    @cat_array = Cat.all
    if current_user
      @orders_in_cart = Order.where(cart_id:current_user.cart.id).count
    end
  end

  def show
    @cat = Cat.find(params[:id])
  end

end