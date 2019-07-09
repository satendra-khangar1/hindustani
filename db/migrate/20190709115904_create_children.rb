class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :name
      t.string :sex
      t.references :user, index: true
      t.timestamps
    end
  end
end
