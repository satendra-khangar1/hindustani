class CreateFathers < ActiveRecord::Migration[5.1]
  def change
    create_table :fathers do |t|
      t.string :name
      t.references :user, index: true
      t.timestamps
    end
  end
end
