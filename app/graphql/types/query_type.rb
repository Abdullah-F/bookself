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

  field :author, Types::AuthorType, null: true, description: "one author" do
    argument :id, ID, required: true
  end

  def author(id:)
    Author.where(id: id).first
  end

  field :authors, [Types::AuthorType], null: true, description: "authors"

  def authors
    Author.all
  end

  field :login, String, null:true, description: "Login a user" do
    argument :email, String, required: true
    argument :password, String, required: true
  end

  def login(email:, password:)
    if user = User.find_by(email: email)&.authenticate(password)
      user.sessions.create.key
    end
  end
end
