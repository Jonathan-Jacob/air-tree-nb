class TreehousesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @treehouses = policy_scope(Treehouse).order(created_at: :desc)
  end
  
  def show
    @treehouse = Treehouse.find(params[:id])
    authorize @treehouse
  end
  
  def new
    @treehouse = Treehouse.new
    authorize @treehouse
  end

  def create
    @treehouse = Treehouse.new(treehouse_params)
    authorize @treehouse
    @treehouse.user = current_user
    if @treehouse.save
      redirect_to treehouse_path(@treehouse)
    else
      render :new
    end
  end

  private

  def treehouse_params
    params.require(:treehouse).permit(:name, :description, :price_per_day, :cancel_days, :photo)
  end
end
