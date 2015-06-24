class Destination < ActiveRecord::Base
  belongs_to :user
  has_many :todos
  validates :name, uniqueness: { scope: :user,
    message: "User destinations must be unique"}
  default_scope  { order(:name) }
end
