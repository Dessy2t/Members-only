class User < ApplicationRecord
   has_secure_password
   validates :password, presence: true, length: {maximum: 6}
   validates :email, presence: true
end
