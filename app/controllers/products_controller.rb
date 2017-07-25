class ProductsController < ApplicationController
before_action :find_product, only: [:show,:edit,:update,:destroy]
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to products_path
		else redirect_to 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @product.update(product_params)
			redirect_to products_path
		else render 'edit'
		end
	end
	
	def destroy
	end

	private
	def product_params
		params.require(:product).permit(:name,:description,:price,:no_of_stock, :size, :product_image)
	end
	def find_product
		@product = Product.find(params[:id])
	end
end
