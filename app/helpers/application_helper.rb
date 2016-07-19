module ApplicationHelper
  def newest_album
    Album.newest 
  end 
end
