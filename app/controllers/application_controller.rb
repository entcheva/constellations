class ApplicationController < ActionController::API

  def authenticate!
    unless current_user
      # redirect to login page
    end
  end

  def current_user
    token = request.headers['HTTP_AUTHORIZATION']
    if token
      user_info = Auth.decode(token)
      @current_user ||= User.find(user_info['user'])
    end
  end

end
