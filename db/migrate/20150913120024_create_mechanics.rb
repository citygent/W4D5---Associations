class CreateMechanics < ActiveRecord::Migration
  def change
    create_table :mechanics do |t|
      t.string :name
      t.string :shop

      t.timestamps null: false
    end
  end
end
