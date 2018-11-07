class Api::V1::StudentsController < ApplicationController
  def index
    @students = User.where(position: "student")
    render json: @students
  end

  def show

    # 1) (Once react is rendering with the students name)
    # - also grab the student's assignments as well, return those as a response in json

    render json: User.find(params[:id])
  end
end
