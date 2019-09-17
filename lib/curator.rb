class Curator
  attr_reader :photographs, :artists

  def initialize
    @photographs = []
    @artists = []
  end


  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    found = []
    @artists.each do |artist|
      found << artist if artist.id == id
      end
    found
  end

  def find_photograph_by_id(id)
    found = []
    @photographs.each do |photo|
      found << photo if photo.id == id
    end
    found
  end

  def find_photographs_by_artist(artist)
    return_photos = []
    @photographs.each do |photo|
      # require'pry';binding.pry
      return_photos << photo if photo.artist_id  == artist.id
    end
    return_photos
  end
end
