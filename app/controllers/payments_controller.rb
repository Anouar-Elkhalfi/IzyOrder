class PaymentsController < ApplicationController
  def new
    @order = Order.find(params[:order_id])
  end

  def create
    @order = Order.find(params[:order_id])
    charge = Stripe::Charge.create({
      amount: (@order.total_price * 100).to_i, # Amount in cents
      currency: 'usd',
      source: params[:stripeToken],
      description: "Payment for order #{@order.id}"
    })
    @order.update(status: 'paid')
    redirect_to order_path(@order), notice: "Payment was successful. Your order number is #{@order.order_number}."
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_order_payment_path(@order)
  end
end
