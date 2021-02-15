class CreatePlacesEvents < ActiveRecord::Migration[4.2]
  def change
    create_table :places_events do |t|
      t.belongs_to :place, index: true, foreign_key: true
      t.belongs_to :event, index: true, foreign_key: true
    end
  end
end
