class UsersController < ApplicationController
  before_action :authenticate_user! #, except: []

  def index
    @users = User.all
    # @students = User.students
  end

  def show
    @user = User.find(params[:id])

    #@reviews = @restaurant.reviews
  end
end
