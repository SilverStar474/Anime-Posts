class CommentsController < ApplicationController
    def create
        @bad = Bad.find(params[:bad_id])
        @comment = @bad.comments.create(params[:comment].permit(:name, :body, :email))
        if @comment
            redirect_to bad_path(@bad)
        else
            render :create, status: :unprocessable_entity
        end
    end

    def destroy
        @bad = Bad.find(params[:bad_id])
        @comment = @bad.comments.find(params[:id])
        @comment.destroy
        redirect_to bad_path(@bad)
    end
end
