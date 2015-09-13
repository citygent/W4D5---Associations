class Mechanic < ActiveRecord::Base
  has_many :services, dependent: :destroy
  has_many :bikes, through: :services
end
