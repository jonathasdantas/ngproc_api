class ProcessClassesController < ApplicationController
  # GET - FIND ALL
  def index
    render json: ProcessClass.all
  end

  # GET - FIND BY ID
  def show
    render json: ProcessClass.find(params[:id])
  end
end
