class User < ApplicationRecord
  has_secure_password
  has_secure_token

  has_many :properties, dependent: :destroy

   def invalid_token
    update(token: nil)
  end
end
