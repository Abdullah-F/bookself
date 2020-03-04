class Types::MutationType < Types::BaseObject
  field :create_author, AuthorType, null: true, description: "Create Author" do
    argument :author, Types::AuthorInputType, required: true
  end

 def create_author author:
   Author.create author.to_h
 end

 field :update_author, Boolean, null: false, description: "Update Autor" do
   argument :author, Types::AuthorInputType, required: true
 end

 def update_author author:
   author_object = Author.where(id: author[:id]).first
   author_object&.update author.to_h
 end
# field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor

 field :delete_author, Boolean, null: false, description: "delete Author" do
   argument :id, ID, required: true
 end

 def delete_author id:
   Author.where(id: id).destroy_all
   true
 end
end
