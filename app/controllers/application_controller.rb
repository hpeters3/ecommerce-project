class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  helper_method :current_cart

  def current_cart
    if @current_cart.nil?
      if session[:cart_id]
        @current_cart = Cart.find_by(id: session[:cart_id])
      end

      if @current_cart.nil?
        @current_cart = Cart.create
        session[:cart_id] = @current_cart.id
      end
    end

      @current_cart
  end
end
