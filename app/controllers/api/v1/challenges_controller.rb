class Api::V1::ChallengesController < Api::V1::BaseController

    def index
        @challenges = Challenge.all
        
        render :json => @challenges
    end

    def create
    end

    def destroy
    end

    def update
    end

    private

    def challenge_params
        params.require(:challanges).permit(:name, :daysLeft)
    end

end