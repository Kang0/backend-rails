class Api::V1::ChallengesController < Api::V1::BaseController

    def index
        @challenges = Challenge.all

        respond_to do |f|
            f.json { render :json => @challenges.to_json( :only => [ :id, :name, :daysLeft, :user_id, :dayCreated, :lastDay, :clicked, :timeClicked, :timeToClick ])}
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
        challenge = Challenge.find(params[:id])

        if challenge.update(challenge_params)
            puts("Challenge updated successfully")
            respond_to do |f|
                f.json { render :json => challenge.to_json( :only => [ :id, :name, :daysLeft, :user_id, :dayCreated, :lastDay, :clicked, :timeClicked, :timeToClick ])}
            end
        else
            render json: { errors: 'Could not successfully update' }, status: :bad_request
        end

    end

    private

    def challenge_params
        params.require(:challenge).permit(:id, :name, :daysLeft, :dayCreated, :lastDay, :clicked, :timeClicked, :timeToClick, :user_id)
    end

end