class Proposall 
  include Neo4j::ActiveNode
  property :photo, type: Date

  has_one :both, :place, type: 'at'
  has_many :both, :photos, type: 'photo_of'

  has_many :both, :users, origin: :proposall
end
