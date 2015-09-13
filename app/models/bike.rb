class Bike < ActiveRecord::Base
  has_many :services, dependent: :destroy
  has_many :mechanics, through: :services
end
