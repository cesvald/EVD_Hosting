class AddCountryAndOutsideToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :country, :string
  end
end