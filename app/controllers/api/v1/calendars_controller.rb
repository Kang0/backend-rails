class Api::V1::CalendarsController < Api::V1::BaseController

    def index
        calendar = Challenge.where(params[:id])
        binding.pry
    end

    def update
        calendar_date = Calendar.find(params[:id])
        calendar_date.update(params[:note])
        binding.pry
    end


end