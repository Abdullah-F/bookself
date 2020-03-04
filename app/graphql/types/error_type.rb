class Types::ErrorType < Types::BaseObject
  description "Active Record Errors"

  field :field_name, String, null: false
  field :errors, [String], null: false
end
