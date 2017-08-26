class Reservation < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.belongs_to :organization, index: true
      t.belongs_to :person, index: true
      t.belongs_to :room, index: true, null: false

      t.string :event_name, length: 50, null: false
      t.date :date, null: false
      t.string :start_time, null: false
      t.string :end_time, null: false
      t.string :telephone, lenght: 13
      t.text :note, lenght: 500
      t.integer :status, default: 0, null: false
      t.integer :lock_version, default: 0, null: false

      t.timestamps
    end
  end
end
