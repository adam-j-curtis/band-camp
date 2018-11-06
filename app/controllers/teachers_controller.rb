class TeachersController < ApplicationController
  before_action :authenticate_user! #, except: []

  def index
    @users = User.all
    @teachers = User.where(position: "teacher")
  end

  def show
    binding.pry
    @user = User.find(params[:id])
  end
end
