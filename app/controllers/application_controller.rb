require_relative 'lib/auth.rb'

class ApplicationController < ActionController::API

  # def authenticate!
  #   unless active_user
  #     # redirect to login page
  #   end
  # end

  def active_user
    token = request.headers['HTTP_AUTHORIZATION']
    if token
      user_info = Auth.decode(token)
      @active_user ||= User.find(user_info['user'])
    end
  end

end
