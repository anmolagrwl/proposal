class Photo 
  include Neo4j::ActiveNode
  property :photo_name, type: String

  has_one :in, :proposall, origin: :photo

end
