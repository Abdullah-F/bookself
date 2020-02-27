class Types::MutationType < Types::BaseObject
  field :create_author, AuthorType, null: true, description: "Create Author" do
    argument :author, Types::AuthorInputType, required: true
  end

 def create_author author:
   Author.create author.to_h
 end

# field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor

end
