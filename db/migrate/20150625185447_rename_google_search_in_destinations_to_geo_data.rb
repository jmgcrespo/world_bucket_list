class RenameGoogleSearchInDestinationsToGeoData < ActiveRecord::Migration
  def change
    rename_column :destinations, :google_search, :geo_data
  end
end
