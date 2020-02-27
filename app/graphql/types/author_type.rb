class Types::AuthorInputType < GraphQL::Schema::InputObject
  graphql_name "AuthorInputType"
  description "all attributes for creaitng an author"


  argument :first_name, String, required: false
  argument :last_name, String, required: false
  argument :yob, Int, required: false
  argument :is_alive, Boolean, required: false

end
class Types::AuthorType < Types::BaseObject
  description "An Author"

  field :id, ID, null: false
  field :first_name, String, null: true
  field :last_name, String, null: true
  field :yob, Int, null: false
  field :is_alive, Boolean, null: true
  field :full_name, String, null: true
  field :coordinates, Types::CoordinatesType, null: true

  def full_name
    ([object.first_name, object.last_name].compact).join(" ")
  end
end
