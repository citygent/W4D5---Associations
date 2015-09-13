class Bike < ActiveRecord::Base
  has_many :services
  has_many :mechanics, through: :services
end
