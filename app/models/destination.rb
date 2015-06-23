class Destination < ActiveRecord::Base
  belongs_to :user
  validates :name, uniqueness: { scope: :user,
    message: "User destinations must be unique"}
end
