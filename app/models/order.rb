class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :menu_items, through: :order_items
  has_one :payment

  before_save :calculate_total_price

  private

  def calculate_total_price
    self.total_price = order_items.joins(:menu_item).sum('menu_items.price * order_items.quantity')
  end
end
