class TreehousesController < ApplicationController

  def show
     @treehouse = Treehouse.find(params[:id])
  end

end

private

def treehouse_params
  params.require(:treehouse).permit(:user, :booking)
end
