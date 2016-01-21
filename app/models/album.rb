class Album < ActiveRecord::Base
  belongs_to :publisher
  
  validates :name, length: { in: 5..50 }
  validates :cover_art, presence: true
  validates :released_on, presence: true
end
