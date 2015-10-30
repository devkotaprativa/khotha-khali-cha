class BookingsController < ApplicationController
  def new
    @space = Space.find(params[:space_id])
  	@booking = Booking.new
  end

  def create

  end

  def index
    @space = Space.find(params[:space_id])
    
  end

  def destroy
  end

  private

  def set_params
    params.require(:booking).permit(:no_of_rooms)
  end
end
