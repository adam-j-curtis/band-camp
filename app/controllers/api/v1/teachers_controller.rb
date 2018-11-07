class Api::V1::TeachersController < ApplicationController
  def index
    # # render json: student.?, adapter: :json
    # @students = User.where(position: "student")
    # render json: @students
  end

  def show
    @teacher = User.find(params[:id])
    # @students = User.where(position: "student")
    render json: @teacher
  end
end


# def index
#   @users = User.all
#   @teachers = User.where(position: "teacher")
# end
#
# def show
#   @user = User.find(params[:id])
#   @students = @user.students
# end
# end
