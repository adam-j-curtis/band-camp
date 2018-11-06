class UsersController < ApplicationController
  before_action :authenticate_user! #, except: []
  helper_method :resource_name, :resource, :devise_mapping, :resource_class


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


  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
