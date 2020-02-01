class Api::V1::CommentsController < ApplicationController
    before_action :authorize_request
    before_action :find_commentable, only: [:create, :index]

    def index
        @comments = @commentable.comments
        render json: @comments, status: :ok
    end
    
    def new
        @comment = Comment.new
    end

    def create
        @commentable.comments.build(comment_params)
        @commentable.save
    end

    def show
        @comments = Comment.where(commentable_id: params[:id])
        @comments
    end

    def destroy

    end

    private

    def comment_params
        params.require(:comment).permit(:content)
    end

    def find_commentable
        if params[:comment_id]
            @commentable = Comment.find_by_id(params[:comment_id]) 
        elsif params[:place_id]
            @commentable = Place.find_by_id(params[:place_id])
        end
    end
    
end
    