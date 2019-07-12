class Api::V1::ChallengesController < Api::V1::BaseController

    def index
        @challenges = Challenge.all

        respond_to do |f|
            f.json { render :json => @challenges.to_json( :only => [ :id, :name, :daysLeft, :user_id, :dayCreated, :lastDay, :clicked, :timeClicked, :timeToClick ])}
        end
    end

    def show_challenges
        challenges = Challenge.where(user_id: current_user.id)
        render json: challenges 
        # render :json => { :challenges => challenges.as_json(include: {calendars: {only: [:years, :months, :date]} } )} 
        # showing challenges and the associated calendaer objects as a nested attribute in each challenge
    end

    def create        
        #create challenge
        challenge = Challenge.new(challenge_params)
        challenge.user_id = current_user.id #may need to refractor the way this handles setting the user id
        challenge.save

        params[:calendar].each do |date|
            permit_date = date.permit(:years, :months, :date)
            newDate = challenge.calendars.build(permit_date)
            newDate.save
        end
        
        # mini = Mini.create(level: 1, speciality: '', born: Date.today.to_formatted_s(:long), graduated: false, age: 1, challenge_id: @challenge.id)

        #add 10 currency to user's locker when a challenge is created
        user_locker = current_user.locker
        user_locker.currency += 10
        user_locker.save

        render json: challenge
    end

    def destroy
        Challenge.destroy(params[:challenge][:id])
        Calendar.where(challenge_id: params[:challenge][:id]).destroy_all
        userChallenges = Challenge.where(user_id: current_user.id)
        render :json => { :challenges => userChallenges.as_json(include: {calendars: {only: [:years, :months, :date]} } )}
        # respond_with Item.destroy(params[:id])
    end

    def update
        challenge = Challenge.find(params[:id])

        if challenge.update(challenge_params)
            puts("Challenge updated successfully")
            #update calendar cell with clicked to true
            calendar = challenge.calendars
            currentDay = params[:currentTime].split(" ")
            calendarCell = calendar.where(months: currentDay[0].to_i, date: currentDay[1].to_i).first
            calendarCell.clicked = true
            calendarCell.save

            render json: challenge

        else
            render json: { errors: 'Could not successfully update' }, status: :bad_request
        end
    end

    private

    def challenge_params
        params.require(:challenge).permit(:id, :name, :daysLeft, :dayCreated, :lastDay, :clicked, :timeClicked, :timeToClick, :user_id)
    end

end