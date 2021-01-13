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
    @user.update_attributes(user_params)
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


#  later 
#def create
#     user = User.create(user_params)
#     if user.valid?
#     payload= {user_id: user.id}
      # token = encode_token(payload)
#       render json: UserSerializer.new(user)
# or {user:user, jwt: token}
#     else
#       render json: {errors: user.errors.full_messages}, status: :unprocessible_entity
#     end 
#   end