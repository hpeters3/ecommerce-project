class CartsController < ApplicationController
  def show
    @cart = current_cart
  end

  def checkout
    @cart = current_cart

    if params[:commit].present?
      if params[:province] != " " && params[:name].present?
        @submission = true
        @address = params[:address]
        @province = params[:province]
        @name = params[:name]

        if @province == "BC"
          @tax = 12
          User.create(name: @name, province: @province, address: @address)

        elsif @province == "AB"
          @tax = 5
          User.create(name: @name, province: @province, address: @address)

        elsif @province == "SK"
          @tax = 11
          User.create(name: @name, province: @province, address: @address)

        elsif @province == "MB"
          @tax = 12
          User.create(name: @name, province: @province, address: @address)

        elsif @province == "ON"
          @tax = 13
          User.create(name: @name, province: @province, address: @address)

        elsif @province == "QB"
          @tax = 14.975
          User.create(name: @name, province: @province, address: @address)

        elsif @province == "NL"
          @tax = 15
          User.create(name: @name, province: @province, address: @address)

        elsif @province == "NS"
          @tax = 14
          User.create(name: @name, province: @province, address: @address)

        elsif @province == "NB"
          @tax = 15
          User.create(name: @name, province: @province, address: @address)

        elsif @province == "PEI"
          @tax = 15
          User.create(name: @name, province: @province, address: @address)

        elsif @province == "YK"
          @tax = 5
          User.create(name: @name, province: @province, address: @address)

        elsif @province == "NT"
          @tax = 5
          User.create(name: @name, province: @province, address: @address)

        elsif @province == "NU"
          @tax = 5
          User.create(name: @name, province: @province, address: @address)
        end
      else
        @tax = 0
        @submission = true
      end
    else
      @submission = false
    end
  end

  def purchase
    @cart = current_cart
  end
end
