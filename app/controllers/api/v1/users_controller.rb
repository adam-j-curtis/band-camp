class Api::V1::UsersController < ApplicationController
  def index
    # render json: student.?, adapter: :json
    @students = User.where(position: "student")
    render json: @students
  end

  def show
    @students = User.where(position: "student")
    render json: @students.find(params[:id])
  end
end
