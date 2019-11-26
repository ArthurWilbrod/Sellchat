class ApplicationController < ActionController::Base
    before_action :add_cart

    private
    
    def add_cart
puts "METHOD ADD CARTTTTTTTTTTTTTTTTTTTTTTTTTTTT"
puts "METHOD ADD CARTTTTTTTTTTTTTTTTTTTTTTTTTTTT"
        

        if current_user && current_user.cart == nil
puts "OK DANS IFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
            cart = Cart.create(user: current_user)
            current_user.cart = cart
puts "ID DU PANIER DU USER ACTUEL"
puts current_user.cart_id
puts "ID DU PANIER DU USER ACTUEL"
            current_user.save
        end

    end
end