class OrderController < ApplicationController
  def new
    @order = Order.new
    @order.cart_id = current_user.cart_id
    @order.cat = Cat.find(params[:format])
    @orders_in_cart = Order.where(cart_id:current_user.cart.id).count
    puts "IN def new AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    puts "IN def new AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    puts @orders_in_cart
    puts "IN def new AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    puts "IN def new AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    @order.save
    redirect_to root_path
  end
end
