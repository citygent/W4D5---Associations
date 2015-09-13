class Mechanic < ActiveRecord::Base
  has_many :services
  has_many :bikes, through: :services
end
