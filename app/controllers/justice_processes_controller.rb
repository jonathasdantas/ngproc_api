class JusticeProcessesController < ApplicationController
  # GET - ALL
  def index
    render json: JusticeProcess.all
  end

  # GET - BY ID
  def show
    render json: JusticeProcess.find(params[:id])
  end

  # POST - CREATE
  def create
    @justice_process = JusticeProcess.new(justice_process_params)

    if @justice_process.save
      render json: @justice_process, status: :created
    else
      render json: @justice_process.errors, status: :unprocessable_entity
    end
  end

  # PUT/PATCH - UPDATE
  def update
    @justice_process = JusticeProcess.find(params[:id])

    if @justice_process.update(justice_process_params)
      render json: @justice_process
    else
      render json: @justice_process.errors, status: :unprocessable_entity
    end
  end

  # DELETE
  def destroy
    @justice_process = JusticeProcess.find(params[:id])
    @justice_process.destroy
  end

  private

    def justice_process_params
      params.require(:justice_process).permit(
        :npu,
        :user_id,
        :process_class_id,
        :judging_body_id,
        :priority,
        :secret
      )
    end
end
