class Api::V1::ChallengesController < Api::V1::BaseController

    def index
        respond_with Challenge.all
    end

    def create
        
        @challenge = Challenge.new(challenge_params)
        @challenge.user_id = current_user.id
        @challenge.save

        respond_with :api, :v1, @challenge
    end

    def destroy
        respond_with Item.destroy(params[:id])
    end

    def update
        item = Item.find(params[:id])
        item.update_attribute(items_params)
        respond_with item, json: item
    end

    private

    def challenge_params
        params.require(:challenge).permit(:name, :daysLeft)
    end

end