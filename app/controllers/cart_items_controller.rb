class CartItemsController < ApplicationController
    def create
      book = Book.find(params[:book_id])
      cart = current_cart
      cart_item = cart.cart_items.find_by(book_id: book.id)

      if cart_item
        cart_item.quantity += 1
      else
        cart_item = cart.cart_items.build(book_id: book.id, quantity: 1)
      end

      if cart_item.save
        redirect_to cart_path(cart)
      end
    end
end
