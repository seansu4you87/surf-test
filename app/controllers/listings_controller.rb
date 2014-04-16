class ListingsController < ApplicationController

  # GET /listings/:name
  def show
    render json: {
      name: "Hawaii Bungalo",
      price: 145
    }
  end

  # POST /listings
  def create
    render json: {
      name: params[:name],
      price: params[:price].to_i
    }
  end

end
