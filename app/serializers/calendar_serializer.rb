class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :years, :months, :date, :challenge_id, :clicked

  belongs_to :challenge
end
