class ApplicationController < ActionController::Base
  def home
  end

  def about
  end

  def contact
  end

  def secret
    @user = User.find_by(id:params[:current_user])
  end

  def authorize_user
    return current_user ? true : false
  end
end
