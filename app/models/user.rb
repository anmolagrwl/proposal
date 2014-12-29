class User 
  include Neo4j::ActiveNode
  property :name, type: String
  property :fb, type: String
  property :photo, type: String

  has_many :both, :proposall, type: 'made_proposal'
  has_many :both, :proposall, type: 'recieved_proposal'
end
