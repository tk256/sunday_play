class Person < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.belongs_to :organization, index: true

      t.string :name, length: 100, null: false
      t.string :name_kana, length: 100, null: false
      t.string :telephone, lenght: 13
      t.text :address, lenght: 200
      t.text :note, lenght: 500

      t.integer :lock_version, default: 0, null: false

      t.timestamps
    end
  end
end
