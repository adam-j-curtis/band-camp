class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    users = User.all
    @user = users[-1]
    @id = @user.id


    if @user.position == "teacher"
      @teacher = @user
      '/teachers/:id'
    else
      @student = @user.id
      '/students/:id'
    end
  end
end
