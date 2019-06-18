class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :years, :months, :dates, :challenge_id, :clicked

  belongs_to :challenge
end
