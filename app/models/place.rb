class Place 
  include Neo4j::ActiveNode
  property :location, type: String

  has_one :in, :proposall, origin: :place

end
