class ProductsController < ApplicationController

	def index
		@product = Product.filter(filtering_params).page(params[:page]).per(params[:per_page])
	end

	def show
		@product = Product.find(params[:id])
	end

	def add_to_cart
    Cart.creat(cart_params)
	end

	def view_cart
		product_ids = current_user.present? ? Cart.where(customer_id: current_user.id).pluck(:product_id) : Cart.pluck(:product_id)
		@products = Product.find_by(id: )
	end

	private 

	def filtering_params
    params.permit(:name, :price, :size, :merchant_name)
  end

  def cart_params
  	params.permit(:product_id, :customer_id)
  end

  def current_user
  	@customer = Customer.find(session[:id])
  end

end
