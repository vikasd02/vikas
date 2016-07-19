module ApplicationHelper
  def newest_album
    Album.newest 
  end 
   	
  def publishers_array
    Publisher.select(:id, :name, :city, :state).map{|publisher| [publisher.to_select_string ,publisher.id]} 
  end 
  
end
