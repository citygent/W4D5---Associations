class AddMechanicIdAndBikeIdToServices < ActiveRecord::Migration
  def change
    add_reference :services, :mechanic, index: true, foreign_key: true
    add_reference :services, :bike, index: true, foreign_key: true
  end
end
