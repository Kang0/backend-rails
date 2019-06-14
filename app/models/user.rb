class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true, uniqueness: {case_sensitive: false }, allow_blank: false, format: { with: /\A[a-zA-z0-9]+\z/ }
    validates :email, presence: true, uniqueness: { case_sensitive: false }, allow_blank: false, format: { with: /@/ }

    before_save :downcase_email

    has_many :challenges
    has_one :locker

    def downcase_email
        self.email = self.email.delete(' ').downcase
    end
    
end
