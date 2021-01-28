class Customers::ItemsController < ApplicationController
  # 商品一覧
  def top
  end
  
  # 商品登録
  def new
    @item = Item.new(item_params)
  end
  
  # 商品詳細
  def show
  end
  
  def edit
  end
  
  def destroy
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price, :for_someone, :age, :gender, :purpose)
  end
end
