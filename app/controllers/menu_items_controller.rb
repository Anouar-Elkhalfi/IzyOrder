class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
    # @qr_code = QrCodeService.generate_qr_code(menu_items_url)
  end
  def show
    @menu_item = MenuItem.find(params[:id])
  end
end
