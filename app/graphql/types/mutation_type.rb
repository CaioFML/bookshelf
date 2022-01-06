module Types
  class MutationType < Types::BaseObject
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor

    field :update_author, Boolean, null: false, description: "Update author" do
      argument :author, Types::AuthorInputType, required: true
    end

    def update_author(author:)
      Author.find(author[:id])&.update(author.to_h)
    end
  end
end
