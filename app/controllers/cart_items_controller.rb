class CartItemsController < ApplicationController
	def destroy
		@cart = current_cart
		@item = @cart.find_cart_item(params[:id])
		@product = @item.product
		@item.destroy

		flash[:notice] = "成功將商品 #{@product.title} 從購物車刪除"
		redirect_to :back
	end

	def update
		@cart = current_cart
		@item = @cart.find_cart_item(params[:id])

		if @item.product.quantity >= item_params[:quantity].to_i
			@item.update(item_params)
			flash[:notice] = "成功更新數量"
		else
			flash[:warning] = "商品不足以加入購物車"
		end

		redirect_to carts_path
	end

	private

	def item_params
		params.require(:cart_item).permit(:quantity)
	end
end
