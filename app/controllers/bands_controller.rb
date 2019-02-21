class BandsController < ApplicationController

  def index
    @bands = Bands.all
  end

  def show
    @band = Band.find(params[:id])
    @teacher = @band.teacher.full_name_first
    @students = @band.users
  end
end
