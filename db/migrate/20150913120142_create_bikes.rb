class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :brand
      t.string :colour
      t.string :owner

      t.timestamps null: false
    end
  end
end
