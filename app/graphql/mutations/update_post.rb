module Mutations
  class UpdatePost < Mutations::BaseMutation
    graphql_name 'UpdatePost'
    field :post, Types::PostType, null: true

    argument :id, ID, required: true
    argument :title, String, required: false
    argument :description, String, required: false

    def resolve(**args)
      post = Post.find(args[:id])
      post.update(args.slice!("id"))
      {
        post: post
      }
    end
  end
end