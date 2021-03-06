class Todo < ActiveRecord::Base
  belongs_to :destination
  geocoded_by :full_location
  after_validation :geocode
  validates_uniqueness_of :name, scope: [:location]

  def full_location
    [self.location, self.destination.name].join(',')
  end
end
