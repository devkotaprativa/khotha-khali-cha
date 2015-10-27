class SpacesController < ApplicationController
  def index
    @user =current_user
    @spaces = Space.all
  end

  def new
    @user = User.find(params[:user_id])
    @space = Space.new
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
  end

  def show
  end

  def destroy
  end

  def edit
  end

  private

  def set_params
    params.require(:space).permit(:name, :location, :phone_number, :number_of_rooms)
  end
end
