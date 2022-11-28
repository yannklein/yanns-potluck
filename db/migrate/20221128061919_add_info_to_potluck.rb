class AddInfoToPotluck < ActiveRecord::Migration[7.0]
  def change
    add_column :potlucks, :apt_number, :string
    add_column :potlucks, :comment, :string
  end
end
