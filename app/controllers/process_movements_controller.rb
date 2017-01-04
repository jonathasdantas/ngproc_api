class ProcessMovementsController < ApplicationController
  # GET - ALL
  def index
    render json: ProcessMovement.where(justice_process_id: params[:justice_process_id])
  end

  # GET - BY ID
  def show
    render json: ProcessMovement.where(id: params[:id], justice_process_id: params[:justice_process_id])
  end
end
