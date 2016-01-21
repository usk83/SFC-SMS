class UsersController < ApplicationController
  def index
  end

  def edit
    # @user = User.column_names
    @user = User.find(current_user.id)
    @columns = user_culumns
  end

  def update
    @user = User.find(current_user.id)
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_profile_path, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: users_profile_path }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @columns = user_culumns
  end

  def user_params
    params.require(:user).permit(:email, :name, :year, :line, :tel, :comment, :driver_license_id, :is_admin)
  end

  def user_culumns
    exclude = ["id", "encrypted_password", "reset_password_token", "reset_password_sent_at", "remember_created_at", "sign_in_count", "current_sign_in_at", "last_sign_in_at", "current_sign_in_ip", "last_sign_in_ip", "created_at", "updated_at"]
    User.column_names.reject do |e|
      exclude.include?(e)
    end
  end
end
