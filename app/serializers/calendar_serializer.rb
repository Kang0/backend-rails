class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :years, :months, :date, :challenge_id, :clicked, :userCell, :note, :video

  belongs_to :challenge
end
