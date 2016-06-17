class CartsController < ApplicationController
	def clean
		current_cart.clean!
		flash[:notice] = "購物車已清空"
		redirect_to :back
	end
end
