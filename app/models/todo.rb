class Todo < ActiveRecord::Base
  belongs_to :destination
  geocoded_by :location
  after_validation :geocode
end
