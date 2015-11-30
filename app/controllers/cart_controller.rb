class CartController < ApplicationController
  def index
    if user_signed_in?
      @cart_items = current_user.cart_items
    end
  end

  def create

    if @existing_cart_item = current_user.cart_items.find_by(book_id: cart_item_params[:book_id])
      @existing_cart_item.update(amount: @existing_cart_item.amount + cart_item_params[:amount].to_i)
    else
      @cart_item = CartItem.new(cart_item_params)
      @cart_item.save
    end
    redirect_to books_path, notice: "Buch wurde dem Warenkorb hinzugefügt."
  end

  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to cart_index_path, notice: 'Buch wurde erfolgreich entfernt.'
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:user_id, :book_id, :amount)
  end
end
