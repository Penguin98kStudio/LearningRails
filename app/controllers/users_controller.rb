class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
     @user = User.create(user_params)

     if @user.save
        redirect_to :action => 'index'
     else
        render :action => 'new'
     end

  end

  def edit
    @user = User.find(params[:id])
  end


  def update
     @user = User.find(params[:id])

     if @user.update(user_params)
        redirect_to :action => 'show', :id => @user
     else
        render :action => 'edit'
     end

  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private

  def user_params
     params.require(:user).permit(:name, :roll_no)
  end
end
