class Types::CoordinatesType < Types::BaseObject
  description "coordinates"

  field :lan, Float, null: true
  field :lat, Float, null: true

  def lan
    object.first
  end

  def lat
    object.last
  end
end
