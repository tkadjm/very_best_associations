class Venue < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => {:scope => :address}
  validates :address, :presence => true
  validates :neighborhood_id, :presence => true

  belongs_to :neighborhood
  has_many :favorites, :dependent => :destroy
end
