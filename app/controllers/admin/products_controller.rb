class Admin::ProductsController < Admin::BaseController
  def index
    @page_title = "Products"
    @products = Product.all
  end

  def new
    @page_title = "Add a Product"
    @product = Product.new
  end

  def create
    @product = Product.new product_params

    respond_to do |format|

      if @product.save
        format.html {}
        format.json {}
      else
        format.html { render :new }
        format.json { render json: { errors: @product.errors }}
      end

    end
  end

  protected

  def product_params
    params.require(:product).permit(:name, :description)
  end
end
