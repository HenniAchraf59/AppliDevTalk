class Event < ApplicationRecord
  has_many :registers
<<<<<<< HEAD
  has_many :users, :through => :registers
=======
  has_many :users, through: :registers
>>>>>>> develop
end
