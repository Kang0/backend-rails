class Api::V1::UserController < ApplicationController

    skip_before_action :authenticate, only: [:login, :create]

    def login
        user = User.find_by(username: params[:username])

        #user serializer only serializers one level deep, tried to pass in token and user in the render json, but cannot
        if user && user.authenticate(params[:password])
            token = encode({user_id: user.id})
            current_user = user
            userInfo = {:username => user.username, :email => user.email, :token => token, :status => "success", :message => "Successfully Logged In"}
            render json: userInfo, status: :ok
        else
            render json: { errors: 'Invalid username / password'}, status: :unauthorized
        end
    end

    def create
        user = User.new(user_params)

        if user.save
            user.create_locker(currency: 0)
            render json: { message: 'User successfully created. Please log in.'}
        else
            render json: { errors: user.errors.full_messages }, status: :bad_request
        end
    end


    def show_user
        render json: { username: current_user.username, email: current_user.email}
        #this only shows the username and email and not the password_digest
    end

    def find_user
        render json: current_user, only: [:id, :username, :email]
    end

    def show_locker
        locker = Locker.find_by(user_id: current_user.id)
        render json: locker, except: [:created_at, :updated_at]
    end

    def update_locker
        locker = current_user.locker
        locker.update(currency: params["currency"])
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end