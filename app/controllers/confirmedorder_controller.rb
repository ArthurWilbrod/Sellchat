class ConfirmedorderController < ApplicationController

    def new

        puts "IN DEF NEWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW"
        @Confirmedorder = Confirmedorder.new
        puts current_user.cart.cats
        @Confirmedorder.cats = current_user.cart.cats
        puts @Confirmedorder.cats
        @Confirmedorder.save
        redirect_to cart_path(current_user.cart_id)

    end


end
