class Neighborhood < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => {:scope => :city}

  has_many :venues
end
