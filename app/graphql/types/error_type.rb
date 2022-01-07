class Types::ErrorType < Types::BaseObject
  field :field_name, String, null: false
  field :errors, [String], null: false
end
