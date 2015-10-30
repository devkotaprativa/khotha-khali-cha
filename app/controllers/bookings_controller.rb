class BookingsController < ApplicationController
  def new
    @space = Space.find(params[:space_id])
  	@booking = Booking.new
  end

  def create
    @space = Space.find(params[:space_id])
    @client = current_user
    @booking  = Booking.new(set_params)
    @booking.client_id = @client.id
    @booking.post_id =@space.id
    @booking.status = :pending
    if @booking.save
      flash[:msg]="booking request sent"
      redirect_to root_path
    else
      flas[:msg]= "booking failed"
      redirect_to root_path
    end
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
