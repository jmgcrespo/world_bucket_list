module GoogleMapsHelper
  def destination_static_map(destination)
    url = 'https://maps.googleapis.com/maps/api/staticmap?size=200x100'
    uri = "&center=#{destination.name}"
    destination.todos.each do |todo|
      uri += "&markers=color:red|label:#{todo.name}|#{todo.latitude},#{todo.longitude}"
    end

    url += URI.encode(uri)
  end
end


