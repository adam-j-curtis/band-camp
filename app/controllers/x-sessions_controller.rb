class SessionsController < Devise::RegistrationsController
  protected

  def after_sign_in_path_for(resource)
    @user = User.all

    if @user.where(position: "teacher")
      binding.pry
      '/teachers/:id'
    else
      '/students/:id'
    end
  end
end
