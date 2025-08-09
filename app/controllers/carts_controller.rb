class CartsController < ApplicationController
  def show
    @cart = current_cart
  end

  def checkout
    @cart = current_cart

    @subtotal = 0
    @amount = 0

    @cart.cart_items.each do |item|
      @subtotal += item.quantity * item.book.price
      @amount += item.quantity
    end
    @subtotal15 = @subtotal * 1.15
    @subtotalqb = @subtotal * 1.14975
    @subtotal14 = @subtotal * 1.14
    @subtotal13 = @subtotal * 1.13
    @subtotal12 = @subtotal * 1.12
    @subtotal11 = @subtotal * 1.11
    @subtotal5 = @subtotal * 1.05

    if params[:commit].present?
      if params[:province] != " " && params[:name].present?
        @submission = true
        @address = params[:address]
        @province = params[:province]
        @name = params[:name]

        if @province == "BC"
          @tax = 12
          @user = User.create(name: @name, province: @province, address: @address)
          Order.create(user: @user, books_ordered: @amount, total_cost: @subtotal12)

        elsif @province == "AB"
          @tax = 5
          @user = User.create(name: @name, province: @province, address: @address)
          Order.create(user: @user, books_ordered: @amount, total_cost: @subtotal5)

        elsif @province == "SK"
          @tax = 11
          @user = User.create(name: @name, province: @province, address: @address)
          Order.create(user: @user, books_ordered: @amount, total_cost: @subtotal11)

        elsif @province == "MB"
          @tax = 12
          @user = User.create(name: @name, province: @province, address: @address)
          Order.create(user: @user, books_ordered: @amount, total_cost: @subtotal12)

        elsif @province == "ON"
          @tax = 13
          @user = User.create(name: @name, province: @province, address: @address)
          Order.create(user: @user, books_ordered: @amount, total_cost: @subtotal13)

        elsif @province == "QB"
          @tax = 14.975
          @user = User.create(name: @name, province: @province, address: @address)
          Order.create(user: @user, books_ordered: @amount, total_cost: @subtotalqb)

        elsif @province == "NL"
          @tax = 15
          @user = User.create(name: @name, province: @province, address: @address)
          Order.create(user: @user, books_ordered: @amount, total_cost: @subtotal15)

        elsif @province == "NS"
          @tax = 14
          @user = User.create(name: @name, province: @province, address: @address)
          Order.create(user: @user, books_ordered: @amount, total_cost: @subtotal14)

        elsif @province == "NB"
          @tax = 15
          @user = User.create(name: @name, province: @province, address: @address)
          Order.create(user: @user, books_ordered: @amount, total_cost: @subtotal15)

        elsif @province == "PEI"
          @tax = 15
          @user = User.create(name: @name, province: @province, address: @address)
          Order.create(user: @user, books_ordered: @amount, total_cost: @subtotal15)

        elsif @province == "YK"
          @tax = 5
          @user = User.create(name: @name, province: @province, address: @address)
          Order.create(user: @user, books_ordered: @amount, total_cost: @subtotal5)

        elsif @province == "NT"
          @tax = 5
          @user = User.create(name: @name, province: @province, address: @address)
          Order.create(user: @user, books_ordered: @amount, total_cost: @subtotal5)

        elsif @province == "NU"
          @tax = 5
          @user = User.create(name: @name, province: @province, address: @address)
          Order.create(user: @user, books_ordered: @amount, total_cost: @subtotal5)
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
  end
end
