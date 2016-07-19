class Artist < ActiveRecord::Base
  has_many :songs
  has_many :albums, -> { uniq }, through: :songs
  
  validates :name, presence: true
  
  def image_url_with_default
    self.image_url ? self.image_url : "no_image.png"
  end 
  
end
