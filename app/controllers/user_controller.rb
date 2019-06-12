class UserController < ApplicationController

    def show_user
        render json: { username: current_user.username, email: current_user.email}
        #this only shows the username and email and not the password_digest
    end

    private

    # def challenge_params
    #     params.require(:challenge).permit(:name, :daysLeft)
    # end

end