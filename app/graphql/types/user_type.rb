class Types::UserType < Types::BaseObject
  description "A user"

  field :id, ID, null: true
  field :email, String, null: true
  field :is_superadmin, Boolean, null: true
end