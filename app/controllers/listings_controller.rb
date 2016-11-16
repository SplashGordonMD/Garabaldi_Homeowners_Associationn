class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    listing = Listing.new(name: params[:name], address: params[:address])
    listing.save
    #render 'create.html.erb'
    #render 'create.html.erb'
    redirect_to "/listings/#{listing.id}"
  end

  def show
    @listing = Listing.find_by(id: params[:id]) 
    render 'show.html.erb'
  end
  
  def edit
    @listing = Listing.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @listing = Listing.find_by(id: params[:id])
    @listing.name = params[:name]
    @listing.address = params[:body]
    @listing.save
    #render 'update.html.erb'
    flash[:success] = "Listing successfully updated!"
    redirect_to "/listings/#{listing.id}"
  end

  def destroy
    @listing = Listing.find_by(id: params[:id])
    @listing.destroy
    #render 'destroy.html.erb'
    redirect_to "/listings/#{listing.id}"
  end
end
