class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :name, :daysLeft, :user_id, :dayCreated, :lastDay, :clicked, :timeClicked, :timeToClick, :completed

  # has_many :calendars do
  #   object.calendars.order(:id)
  # end
  #is there a better way of writing the above order of calendar by id

end
