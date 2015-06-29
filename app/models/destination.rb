class Destination < ActiveRecord::Base
  belongs_to :user
  has_many :todos, dependent: :destroy
  validates :name, uniqueness: { scope: :user,
    message: "User destinations must be unique"}
  validate :geocode_search
  default_scope  { order(:name) }

  def geocode_search
    result = Geocoder.search(self.name)
    unless result.empty?
      self.geo_data = result.first.data
    else
      errors.add(:name, "can´t find this destination")
    end
  end
end
