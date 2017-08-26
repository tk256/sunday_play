class Room < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.belongs_to :building, index: true

      t.string :name, length: 100, null: false
      t.text :note, lenght: 500
      t.integer :time_type

      t.integer :lock_version, default: 0, null: false

      t.timestamps
    end
  end
end
