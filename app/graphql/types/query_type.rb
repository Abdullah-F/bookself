class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :test_field, String, null: false,
    description: "An example field added by the generator I'm abdullah and I did
    this for the sake of practice." do

      argument :name, String, required: true

  end

  def test_field(name:)
    "Hello World! #{name}"
  end
end
