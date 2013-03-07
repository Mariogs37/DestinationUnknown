class AddItinerariesTable < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :name
      t.integer :user_id
      t.date :start_date
      t.timestamps
    end
  end
end
