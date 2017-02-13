class User < ApplicationRecord
  has_secure_password
  has_many :constellations
  has_many :stars, through: :constellations
end
