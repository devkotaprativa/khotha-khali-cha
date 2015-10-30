
class SpacesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @user= current_user
    @spaces = @user.spaces
    # binding.pry
    @space = Space.new
    @results = Space.search(params[:search])
  end

  def new   
    @user = User.find(params[:user_id])
    @space = Space.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @user = User.find(params[:user_id])
    @space =Space.new(set_params)
    @space.user_id = @user.id
    if(@space.save)
      flash[:notice] = "Space sucessfully hosted"
      redirect_to user_spaces_path(@user.id)
    else
      flash[:msg] = "cant host this space"
      redirect_to user_spaces_path(@user.id)
    end
  end

  def update

    @user = User.find(params[:user_id])
    @space = Space.find(params[:id])
     if @space.update(set_params)
     flash[:notice] = " sucessfully updated information"
      redirect_to user_spaces_path(@user.id)
    else
      flash[:msg] = "information was not updated"
      redirect_to user_spaces_path(@user.id)
    end
  end

  def show
    @user = User.find(params[:user_id])
    @space = Space.find(params[:id])
    respond_to do |format|
      # format.html # show.html.erb
      format.js # show.js.erb
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @space = Space.find(params[:id])
    # binding.pry
     @space.destroy   
      respond_to do |format|
       format.js 
     end

  end

  def edit
    # binding.pry
    @user = User.find(params[:user_id])
    @space = Space.find(params[:id])   
    respond_to do |format|
      format.js
    end
  end 

  def space_booking
    @spaces = current_user.spaces
    @user = current_user
    bookings = @user.my_bookings
  end

  private

  def set_params
    params.require(:space).permit(:name, :location, :phone_number, :number_of_rooms, :price, :image)
  end
end
