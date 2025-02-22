class CreateGifts < ActiveRecord::Migration[7.1]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :url
      t.references :friend, null: false, foreign_key: true

      t.timestamps
    end
  end
end
