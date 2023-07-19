class User < ApplicationRecord
  has_secure_token
  has_secure_password

  def invalid_token
    update(token: nil)
  end
end
