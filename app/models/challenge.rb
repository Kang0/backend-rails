class Challenge < ApplicationRecord

    belongs_to :user

    has_one :mini

end