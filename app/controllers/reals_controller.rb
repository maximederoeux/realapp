class RealsController < ApplicationController
  before_action :set_real, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @reals = Real.all
    respond_with(@reals)
  end

  def show
    respond_with(@real)
  end

  def new
    @real = Real.new
    respond_with(@real)
  end

  def edit
  end

  def create
    @real = Real.new(real_params)
    flash[:notice] = 'Real was successfully created.' if @real.save
    respond_with(@real)
  end

  def update
    flash[:notice] = 'Real was successfully updated.' if @real.update(real_params)
    respond_with(@real)
  end

  def destroy
    @real.destroy
    respond_with(@real)
  end

  private
    def set_real
      @real = Real.find(params[:id])
    end

    def real_params
      params[:real]
    end
end
