class Event < ApplicationRecord
  has_many :registers
  has_many :users, through: :registers

end
