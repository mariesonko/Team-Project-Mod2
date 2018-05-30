class CreateHangouts < ActiveRecord::Migration[5.2]
  def change
    create_table :hangouts do |t|
      t.integer :host_id
      t.integer :guest_id
      t.integer :restaurant_id
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
