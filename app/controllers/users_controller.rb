class UsersController < ApplicationController
  before_action :authenticate_user! #, except: []

  def index
    @users = User.all
    @students = User.where(position: "student")
  end

  def show
    @user = User.find(params[:id])

    # <% name_array = [] %>
    # <% students.each do |student| %>
    #   <% name = student.full_name_last %>
    #   <% num = student.id %>
    #   <% hash = { student: name, id: num} %>
    #   <% name_array << hash %>
    # <% end %>
    # <% name_array.sort_by! { |hash| hash[:student]} %>
    #
    #
    #
    # <% name_array.each do |name| %>
    #   <h3 class="student-name"><%= link_to name[:student], user_path(name[:id]) %></h3>
    # <% end %>
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
