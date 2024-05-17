class CreateMeetups < ActiveRecord::Migration[7.1]
  def change
    create_table :meetups do |t|
      t.date :date
      t.string :location
      t.references :friend, null: false, foreign_key: true

      t.timestamps
    end
  end
end
