class CreatePotlucks < ActiveRecord::Migration[7.0]
  def change
    create_table :potlucks do |t|
      t.string :name
      t.datetime :date
      t.string :location
      t.string :latitude
      t.string :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
