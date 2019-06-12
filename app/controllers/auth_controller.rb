class AuthController < ApplicationController

    skip_before_action :authenticate, only: [:login, :create]
    #we don't need to authenticate loginning in, since that is the point of the login page

    #post to /login with { username: 'some_thing', password: 'some password'}

    def login
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            token = encode( {user_id: user.id} )
            render json: { token: token, success: true }
        else
            render json: { success: false }
        end
    end

    def create
        user = User.new(user_params)

        if user.save
            binding.pry
            render json: { status: 'User successfully created '}, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :bad_request
        end
    end

    private

    def user_params
        binding.pry
        params.require(:user).permit(:username, :email, :password)
    end

end