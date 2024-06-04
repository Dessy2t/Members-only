class User < ApplicationRecord
   has _secure_password
   validates :password, presence: true, length: {maximum: 6}
   validates :email, presence: true
end
