class Api::V1::CalendarsController < Api::V1::BaseController

    def index
        calendar = Challenge.where(params[:id])
        binding.pry
    end


end