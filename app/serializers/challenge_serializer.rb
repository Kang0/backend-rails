class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :name, :daysLeft, :user_id, :dayCreate, :lastDay, :clicked, :timeClicked, :timeToClick
  has_many :calendars
end
