class TreehousesController < ApplicationController
  def index
    @treehouses = policy_scope(Treehouse).order(created_at: :desc)
  end

  def new
    @treehouse = Treehouse.new
  end

  def create
    @treehouse = Treehouse.new(treehouse_params)
    if @treehouse.save
      redirect_to treehouse_path(@treehouse)
    else
      render :new
    end
  end

  private

  def treehouse_params
    params.require(:treehouse).permit(:name, :doses, :ingredients, :photo)
  end
end
