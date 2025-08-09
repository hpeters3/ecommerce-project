class CartsController < ApplicationController
  def show
    @cart = current_cart
  end

  def checkout
    @cart = current_cart

    if params[:commit].present?
      if params[:province] != " "
        @submission = true
        @address = params[:address]
        @province = params[:province]

        if @province == "BC"
          @tax = 12

        elsif @province == "AB"
          @tax = 5

        elsif @province == "SK"
          @tax = 11

        elsif @province == "MB"
          @tax = 12

        elsif @province == "ON"
          @tax = 13

        elsif @province == "QB"
          @tax = 14.975

        elsif @province == "NL"
          @tax = 15

        elsif @province == "NS"
          @tax = 14

        elsif @province == "NB"
          @tax = 15

        elsif @province == "PEI"
          @tax = 15

        elsif @province == "YK"
          @tax = 5

        elsif @province == "NT"
          @tax = 5

        elsif @province == "NU"
          @tax = 5
        end
      else
        @tax = 0
        @submission = true
      end
    else
      @submission = false
    end
  end

  def payment
    @cart = current_cart
  end
end
