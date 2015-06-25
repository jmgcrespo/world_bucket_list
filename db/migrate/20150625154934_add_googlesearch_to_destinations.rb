class AddGooglesearchToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :google_search, :json
  end
end
