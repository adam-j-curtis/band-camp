class TeachersController < ApplicationController
  before_action :authenticate_user! #, except: []

  def index
    @users = User.all
    @teachers = User.where(position: "teacher")
  end

  def show
    @user = User.find(params[:id])
    @students = @user.students
  end
end
