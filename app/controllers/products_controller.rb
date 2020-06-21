class ProductsController < ApplicationController

	def index
		@category = Category.pluck(:name).uniq
		@product = Product.filter(filtering_params).page(params[:page]).per(params[:per_page])
	end

	private 

	def filtering_params
    params.permit(:name, :price, :size)
  end
end
