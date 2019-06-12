class UserController < ApplicationController

    def show_user
        render json: { username: current_user.username, email: current_user.email}
        #this only shows the username and email and not the password_digest
    end

    def create
        user = User.new(user_params)

        if user.save
            render json: { status: 'User successfully created '}, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :bad_request
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end