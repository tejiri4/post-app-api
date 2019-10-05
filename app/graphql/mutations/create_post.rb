module Mutations
  class CreatePost < Mutations::BaseMutation
    graphql_name 'CreatePost'

    field :post, Types::PostType, null: true

    argument :title, String, required: true
    argument :description, String, required: true

    def resolve(**args)
      post = Post.create(title: args[:title], description: args[:description])
      {
        post: post
      }
   end
  end
end