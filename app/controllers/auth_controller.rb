class AuthController < ApplicationController

    skip_before_action :authenticate, only: [:login, :create]
    #we don't need to authenticate loginning in, since that is the point of the login page

    def login
        @user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            current_user = @user
            token = encode( {user_id: user.id} )
            render json: { token: token, success: true, user: user }
        else
            render json: { errors: 'Invalid username / password'}, status: :unauthorized
        end
    end

    def create
        user = User.new(user_params)

        if user.save
            user.create_locker(currency: 0)
            render json: { status: 'User successfully created '}, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :bad_request
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end