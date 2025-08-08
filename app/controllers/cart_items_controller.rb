class CartItemsController < ApplicationController
    def create
      book = Book.find(params[:book_id])
      cart = current_cart
      cart_item = cart.cart_item.find_by(book_id: book.id)

      if cart_item
        cart_item.quantity += 1
      else
        cart_item = cart.cart_items.build(book: book, quantity: 1)
      end

      if cart_item.save
        redirect_to cart_path(cart), notice: "Product added to cart."
      else
        redirect_to books_path, alert: "Failed to add product to cart."
      end

      def destroy
        cart_item = CartItem.find(param[:id])
        cart_item.destroy
        redirect_to cart_path(curernt_cart), notice: "Item removed from cart."
      end
    end
end
