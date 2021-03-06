class ProductsController < ApplicationController

	before_action :set_product, only: [:edit, :update, :destroy]
	before_action :set_categories, only: [:new, :edit]
	before_action :set_suppliers, only: [:new, :edit]

	def index
		@productos = Product.all 
	end

	def new
		@product = Product.new
	end 

	def edit
	end

	def create
		@product = Product.new(product_params)

	    respond_to do |format|
	      if @product.save
	        format.json {head :no_content }
	        format.js
	      else
	        format.json {render json: @product.errors.full_messages, status: :unprocessable_entity }
	        format.json { render :new}
	      end
	    end 
	end 

	def update
		respond_to do |format|
	      if @product.update(product_params) 
	        format.json {head :no_content }
	        format.js
	      else
	        format.json {render json: @product.errors.full_messages, status: :unprocessable_entity }
	        format.json { render :new}
	      end
    	end
	end

	def destroy
		@product.destroy
    	respond_to do |format|
        	format.json {head :no_content }
        	format.js
    	end
	end

	private 
  
  	def set_product
    	@product = Product.find(params[:id])
  	end

  	def product_params
    	params.require(:product).permit(:nombre, :descripcion, :existencia, :precio, :imagen, :category_id, :supplier_id)
  	end

  	def set_categories
  		@categorias = Category.all
  	end

  	def set_suppliers
  		@proveedores = Supplier.all
  	end

end
