class UsersController < ApplicationController


def create
  @user = User.new(user_params)
  if @user.save
    render json: @user
  else
    render json: @user.errors
  end
end

def update
  @user = User.find(params[:id])
  @user.update(user_params)
  if @user.save
    render json: @user
  else
    render json: @user.errors
  end
end


private

def user_params
  params.permit(:name, :email)
end

end
