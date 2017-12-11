class CommentsController < ApplicationController
before_action :set_submission
before_action :set_user
before_action :set_proposal


  def index
    @comments = @submission.comments.all
  end

  def new
  end

    def create
        @comment = @submission.comments.build(comment_params)
        @comment.user_id = current_user.id
        if @comment.save
          redirect_to proposal_path(@proposal)
        else
          render root_path
        end
    end

    def destroy
      @comment = @submission.comments.find(params[:id])
      @comment.destroy
      redirect_to root_path
    end

    private

    def comment_params
      params.require(:comment).permit(:body)
    end

    def set_submission
      @submission = Submission.find(params[:submission_id])
    end

    def set_user
      @user = User.find_by(user_name: params[:user_name])
    end

    def set_proposal
      @proposal = Proposal.find(params[:proposal_id])
    end
end
