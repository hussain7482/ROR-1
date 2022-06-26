class Api::UserController < ApplicationController
def index
  @user=User.all
  render json: @user
 end
 
 def destroy 
  User.destroy(params[:id])
 end
 
 def search
  @search=User.where("first_name LIKE ? or last_name LIKE ? or email 
  LIKE ?","%"+params[:query]+"%","%"+params[:query]+"%","%"+params[:query]+
  "%")
  render json: @search
 end
 
 def show 
  @user=User.find_by(params[:id])
  render json: @user
 end
 
 def create
  @user=User.create(user_params)
  if @user.save
    render json: @user,status: :updated_successfully
  else
    render json: @user.error,status: :invalid
  end
 end
 
 def update
  @user=User.update(user_params)
  @user.save
  render json: @user
 end
 
 private
  def user_params
   params.require(:user).permit(:first_name,:last_name,:email)
  end
end
