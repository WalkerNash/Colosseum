class CommentsController < ApplicationController
before_action :set_submission

  def index
    @comments = Comment.all
  end

  def new
  end

    def create
        @comment = @submission.comments.create(comment_params)
        @comment.user_id = current_user.id
        if @comment.save
          redirect_to proposal_submissions_url
        else
          render root_path
        end
    end

    def destroy
      @comment = @proposal.submission.comments.find(params[:id])
      @comment.destroy
      redirect_to root_path
    end

    private

    def comment_params
      params.require(:comment).permit(:content)
    end

    def set_submission
      @submission = Submission.find(params[:submission_id])
    end

end
