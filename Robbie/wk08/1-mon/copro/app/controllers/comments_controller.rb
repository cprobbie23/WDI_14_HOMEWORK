class CommentsController < ApplicationController

  def create
    comment = Comment.new
    comment.body = params[:body]
    comment.user_id = session[:user_id]
    comment.project_id = params[:project_id]
    comment.save
    redirect_to "/projects/#{comment.project_id}"
    
  end
end
