class Album < ActiveRecord::Base
  belongs_to :publisher
  has_many :songs
  
  validates :name, presence: true, length: { in: 2..50 }
  validates :cover_art, presence: true
  validates :released_on, presence: true, format: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: "should be in the format YYYY-MM-DD" } 
  validates :publisher, presence: true 
  
  scope :newest, lambda { order(released_on: :desc).first }
  scope :recent, lambda {|n| where("released_on >= ?", 6.months.ago).order(released_on: :desc).first(n)}
  
  after_save :clear_recent_albums_cache
  
  def self.recent_albums(n=2)
    Rails.cache.fetch("recent_two_albums") do
	   Album.order(released_on: :desc).first(n)
	end 
  end
  
  def clear_recent_albums_cache
    Rails.cache.delete("recent_two_albums")
  end 
  
end
