class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: UserSerializer.new(@users)
  end

  def show 
    @user = User.find(params[:id])
    render json: UserSerializer.new(@user)
  end 

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user), status: :accepted
    else
      render json: {error: "Something didn't work; try again."}, status: :unprocessible_entity
    end 
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    # user_attributes depraecated? update()
    if @user.save
      render json: UserSerializer.new(@user), status: :accepted
    else
      render json: { error: user.errors.full_messages }, status: :unprocessible_entity
    end 
  end

  def destroy
    User.destroy(params[:id])
  end

  private
  def user_params
    params.require(:user).permit( :username, :email,  :description, :password, :password_confirmation)
  end  
end 
