class LikesController < ApplicationController


  def create
    hotel = Hotel.find(params[:hotel_id])
    user = User.find(params[:user_id])
    Like.create(user: user, hotel: hotel)

    render json: user.hotels
  end

  def destroy
  end

end
