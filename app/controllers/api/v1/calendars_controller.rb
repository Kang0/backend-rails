class Api::V1::CalendarsController < Api::V1::BaseController

    def index
        binding.pry
        calendar = Challenge.where(params[:id])
    end


end