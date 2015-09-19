class SessionsController < Website::ApplicationController
  def new
    if logged_in?
      redirect_to dashboard_path
    else
      @user = User.new
    end
  end

  def create
    @user = User.find_by(email: session_params[:email])

    if @user && @user.authenticate(session_params[:password])
      sign_in(@user)
      update_login_stats(request.remote_ip)
      redirect_to dashboard_path
    else
      redirect_to :back, alert: "Invalid email or password."
    end
  end

  def destroy
    sign_out current_user
    redirect_to root_url
  end

  private

  def session_params
    params.require(:user).permit(:email, :password)
  end
end
