module Api::V1
  class UsersController < ApplicationController

    def show
    end

    def create
      user = User.new(user_params)
      if params[:password] == params[:password_confirmation]
        user.password = params[:password]
        if user.save
          jwt = Auth.encrypt({user: user.id}) # uses our encrypt method to return an encrypted user token
          render json: {jwt: jwt} # sends token to react action
        else
          render json: {:errors=>
           [{:detail=>"incorrect email or password",
             :source=>{:pointer=>"user/err_type"}}
           ]}, status: 404
        end
      else
        render json: {:errors=>
         [{:detail=>"failed password verification",
           :source=>{:pointer=>"user/err_type"}}
         ]}, status: 404
      end
    end

    def login
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        # issue new jwt token
        jwt = Auth.encrypt({user: user.id})
        # render json with token
        render json: {jwt: jwt, username: user.username} # sends token to react action
      end
    end

    def active
      username = active_user.username
      render json: {username: username}
    end


    def edit
    end

    def update
    end

    def delete
    end

    private

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

  end
end
