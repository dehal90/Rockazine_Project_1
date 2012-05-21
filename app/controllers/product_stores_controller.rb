class ProductStoresController < ApplicationController
  before_filter :access, :except => [:index, :show]
  
  # GET /product_stores
  # GET /product_stores.json
  def index
    @product_stores = ProductStore.paginate(:page => params[:page], :per_page => 3)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_stores }

    end
  end

  # GET /product_stores/1
  # GET /product_stores/1.json
  def show
    @product_store = ProductStore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_store }
    end
  end

  # GET /product_stores/new
  # GET /product_stores/new.json
  def new
    @product_store = ProductStore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_store }
    end
  end

  # GET /product_stores/1/edit
  def edit
    @product_store = ProductStore.find(params[:id])
  end

  # POST /product_stores
  # POST /product_stores.json
  def create
    @product_store = ProductStore.new(params[:product_store])

    respond_to do |format|
      if @product_store.save
        format.html { redirect_to @product_store, notice: 'Product store was successfully created.' }
        format.json { render json: @product_store, status: :created, location: @product_store }
      else
        format.html { render action: "new" }
        format.json { render json: @product_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_stores/1
  # PUT /product_stores/1.json
  def update
    @product_store = ProductStore.find(params[:id])

    respond_to do |format|
      if @product_store.update_attributes(params[:product_store])
        format.html { redirect_to @product_store, notice: 'Product store was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_stores/1
  # DELETE /product_stores/1.json
  


  
  def destroy
    @product_store = ProductStore.find(params[:id])
    @product_store.destroy

    respond_to do |format|
      format.html { redirect_to product_stores_url }
      format.json { head :ok }
    end
  end
end

def index
  @product_store = ProductStore.search(params)
end


