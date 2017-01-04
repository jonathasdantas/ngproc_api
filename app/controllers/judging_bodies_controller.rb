class JudgingBodiesController < ApplicationController
  # GET - ALL
  def index
    render json: JudgingBody.all
  end

  # GET - BY ID
  def show
    render json: JudgingBody.find(params[:id])
  end
end
