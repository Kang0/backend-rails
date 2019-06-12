class Api::V1::ChallengesController < Api::V1::BaseController

    def index
        respond_with Challenge.all
    end

    def create
        respond_with :api, :v1, Challenge.create(challenge_params)
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