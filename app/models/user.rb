class User < ApplicationRecord
<<<<<<< HEAD
  has_many :registers
  has_many :events, :through => :registers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
=======
  #has_many :registers
  has_many :events, through: :registers
>>>>>>> develop
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
