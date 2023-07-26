class User < ApplicationRecord
  has_secure_password
  has_secure_token

  has_many :favorites, dependent: :destroy
  has_many :properties, through: :favorites, counter_cache: true, dependent: :destroy

   validates :email, uniqueness: true,
                    presence: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: "is invalid" }

   def invalid_token
    update(token: nil)
  end

   def self.authenticate(email, password)
    user = User.find_by(email: email)
    return false unless user&.authenticate(password)

    user.regenerate_token
    user
  end
end
