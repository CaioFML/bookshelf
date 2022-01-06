module Types
  class MutationType < Types::BaseObject
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor

    field :update_author, Boolean, null: false, description: "Update author" do
      argument :author, Types::AuthorInputType, required: true
    end

    field :delete_author, Boolean, null: false, description: "Delete author" do
      argument :id, ID, required: true
    end

    def update_author(author:)
      Author.find(author[:id])&.update(author.to_h)
    end

    def delete_author(id:)
      Author.where(id: id).destroy_all

      true
    end
  end
end
