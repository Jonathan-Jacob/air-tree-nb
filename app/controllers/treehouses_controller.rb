class TreehousesController < ApplicationController
  def show
    @treehouse = Treehouse.find(params[:id])
    authorize @treehouse
  end


# private

# def treehouse_params
#   params.require(:treehouse).permit(:user, :booking)
# end


end
