class Constellation < ApplicationRecord
  has_many :stars
  belongs_to :user


end
