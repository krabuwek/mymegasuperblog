class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		item_params = params.require(:comment).permit(:commenter, :body)
		item_params[:commenter] = current_user.email 
		@comment = @post.comments.create(item_params)
		#redirect_to post_path(@post)
	end
end
