class UsersController < ApplicationController

    def show_user
        render json: { username: current_user.username, email: current_user.email}
        #this only shows the username and email and not the password_digest
    end


    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end