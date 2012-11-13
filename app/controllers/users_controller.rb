class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    unless @user.update_attributes(params[:user])
      render :action => :edit
    end
  end

  def new
    @user = User.new	
  end

  def create
    @user = User.new(params[:user])
    if @user.save
     redirect_to users_path
    else
      render :action => :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to :action => :index
    end
  end

end
