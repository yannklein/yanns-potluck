class CreateStuffs < ActiveRecord::Migration[7.0]
  def change
    create_table :stuffs do |t|
      t.string :name
      t.string :quantity
      t.string :price
      t.references :user, foreign_key: true
      t.references :potluck, null: false, foreign_key: true
      t.string :emoji

      t.timestamps
    end
  end
end
