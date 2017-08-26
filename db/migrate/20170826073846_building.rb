class Building < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.string :name, length: 100, null: false
      t.string :address, length: 200
      t.string :organization_name, length: 200
      t.text :note, lenght: 500

      t.integer :lock_version, default: 0, null: false

      t.timestamps
    end
  end
end
