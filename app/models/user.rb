class User < ApplicationRecord
  #has_many :registers
  has_many :events, through: :registers
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
