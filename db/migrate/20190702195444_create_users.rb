class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :aadhar
      t.datetime :bdate
      t.integer :father_id
      t.integer :mother_id
      t.timestamps
    end
  end
end
