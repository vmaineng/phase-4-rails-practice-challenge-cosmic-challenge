class PlanetSerializer < ActiveModel::Serializer
  attributes :id, :name, :distance_from_earth, :nearest_star, :image

#return all about planets and return mission too

  #might not need to include - 1:1 with matt

has_many :missions #want all associations with missions
#do not need to be declared in attributes

end
