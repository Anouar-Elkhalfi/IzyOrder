class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = current_user.orders.build(order_params)
    if @order.save
      redirect_to @order, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to @order, notice: 'Order was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_url, notice: 'Order was successfully destroyed.'
  end

  private

  def order_params
    params.require(:order).permit(:status, :total_price, order_items_attributes: [:menu_item_id, :quantity])
  end
end
