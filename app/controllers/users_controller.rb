class UsersController < ApplicationController
  before_action :authenticate_user! #, except: []

  def index
    @users = User.all
    @students = User.where(position: "student")
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

end
