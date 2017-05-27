class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :address
      t.text :note
      t.string :telephone1
      t.string :thelephone2
      t.string :mail
      t.string :name_kana

      t.timestamps
    end
  end
end
