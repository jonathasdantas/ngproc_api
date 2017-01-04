class DistrictsController < ApplicationController
  # GET - FIND ALL
  def index
    render json: District.all
  end

  # GET - FIND BY ID
  def show
    render json: District.find(params[:id])
  end
end
