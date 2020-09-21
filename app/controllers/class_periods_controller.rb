class ClassPeriodsController < ApplicationController
  before_action :set_class_period, only: [:show, :update, :destroy]

  # GET /class_periods
  def index
    @class_periods = ClassPeriod.all

    render json: @class_periods
  end

  # GET /class_periods/1
  def show
    render json: @class_period
  end

  # POST /class_periods
  def create
    @class_period = ClassPeriod.new(class_period_params)

    if @class_period.save
      render json: @class_period, status: :created, location: @class_period
    else
      render json: @class_period.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /class_periods/1
  def update
    if @class_period.update(class_period_params)
      render json: @class_period
    else
      render json: @class_period.errors, status: :unprocessable_entity
    end
  end

  # DELETE /class_periods/1
  def destroy
    @class_period.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_period
      @class_period = ClassPeriod.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def class_period_params
      params.require(:class_period).permit(:subject, :period, :level)
    end
end
