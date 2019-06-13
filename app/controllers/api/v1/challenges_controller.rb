class Api::V1::ChallengesController < Api::V1::BaseController

    def index
        @challenges = Challenge.all

        respond_to do |f|
            f.json { render :json => @challenges.to_json( :only => [ :name, :daysLeft, :user_id, :dayCreated, :lastDay, :clicked, :timeClicked, :timeToClick ])}
        end
    end

    def create
        
        @challenge = Challenge.new(challenge_params)
        @challenge.user_id = current_user.id #may need to refractor the way this handles setting the user id
        @challenge.save

        respond_with :api, :v1, @challenge
    end

    def destroy
        respond_with Item.destroy(params[:id])
    end

    def update
        binding.pry
        challenge = Challenge.find(params[:id])
        challenge.update_attribute(challenge_params)
        respond_with challenge, json: challenge
        # item = Item.find(params[:id])
        # item.update_attribute(items_params)
        # respond_with item, json: item
    end

    private

    def challenge_params
        params.require(:challenge).permit(:name, :daysLeft, :dayCreated, :lastDay, :clicked, :timeClicked, :timeToClick)
    end

end