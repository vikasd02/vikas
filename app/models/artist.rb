class Artist < ActiveRecord::Base
  has_many :songs
  has_many :albums, -> { uniq }, through: :songs
  
  validates :name, presence: true
end
