class CartController < ApplicationController
  def show
    @orders = Order.where(cart_id:current_user.cart.id)
    @cart = Cart.find(current_user.cart.id)
    @orders_in_cart = Order.where(cart_id:current_user.cart.id).count
  end

  def destroy
    @cart = Cart.find(current_user.cart.id)
    @product_selected = Order.find(params[:id])
    puts Cat.find(@product_selected.cat_id).title
    @product_selected.destroy
    redirect_to cart_path(current_user)
  end
end