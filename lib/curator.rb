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
end
