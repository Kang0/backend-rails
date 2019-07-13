class Api::V1::CalendarsController < Api::V1::BaseController

    def index
        calendar = Challenge.where(params[:id])
        binding.pry
    end

    def update
        calendar_date = Calendar.find(params[:id])
        calendar_date.update(note: params[:note])

        render json: calendar_date
    end

    def show_calendars
        challenges = Challenge.where(user_id: current_user.id)
        calendars = challenges.map do |challenge|
            challenge.calendars.sort_by{|a| a[:id]}
        end

        render json: calendars.to_json
    end


end