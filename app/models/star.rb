class Star < ApplicationRecord
  belongs_to :constellation, optional: true
end
