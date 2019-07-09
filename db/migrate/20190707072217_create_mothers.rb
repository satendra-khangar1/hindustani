class CreateMothers < ActiveRecord::Migration[5.1]
  def change
    create_table :mothers do |t|
      t.string :name
      t.references :user, index: true
      t.timestamps
    end
  end
end
