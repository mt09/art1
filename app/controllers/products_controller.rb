class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def add_to_cart
		@product = Product.find(params[:id])

		if !current_cart.items.include?(@product)
			current_cart.add_product_to_cart(@product)
			flash[:notice] = "成功將商品 #{@product.title} 加入購物車"
		else
			flash[:warning] = "此商品已在購物車中"
		end
		
		redirect_to product_path(@product)
	end
end
