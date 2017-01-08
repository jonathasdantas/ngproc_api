class JudgingBodiesController < ApplicationController
  # GET - ALL
  def index
    render json: JudgingBody.where(district_id: params[:district_id])
  end

  # GET - BY ID
  def show
    render json: JudgingBody.find(params[:id])
  end
end
