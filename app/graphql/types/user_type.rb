class Types::UserType < Types::BaseObject
  description "A user"

  field :id, ID, null: true
  field :email, String, null: true
  field :is_superadmin, Boolean, null: true

  def self.visible?(context)
    !!context[:current_user]
  end
end
