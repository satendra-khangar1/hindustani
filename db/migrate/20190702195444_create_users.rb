class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :aadhar
      t.datetime :bdate
      t.timestamps
    end
  end
end
