class CartItemController < ApplicationController
	before_action :authenticate_user!

	def update
    	cart_item = CartItem.find(params[:id])
    	if cart_item.update(cart_item_params)
    		redirect_to cart_index_path, notice: "Die Anzahl des Buches wurde erfolgreich aktualisiert."
    	else 
    		redirect_to cart_index_path, alert: "Die Anzahl konnte nicht aktualisiert werden."
    	end
	end

	def cart_item_params
		params.require(:cart_item).permit(:amount)
	end

end