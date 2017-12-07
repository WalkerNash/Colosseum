class SubmissionsController < ApplicationController
before_action :set_proposal



  def index
    @proposal = Proposal.find(params[:proposal_id])
    @submissions = Submission.all

  end



  def show
    @submission = Submission.find(params[:id])
  end

  def new
    @submission = Submission.new
  end

  def create
    @proposal = Proposal.find(params[:proposal_id])
    @submission = @proposal.submissions.new(submission_params)
    @submission.user_id = current_user.id

    if @submission.save!
      redirect_to proposal_path(@proposal)
    else
      render 'index'
    end
  end

  def edit
      @proposal = Proposal.find(params[:proposal_id])
    @submission = Submission.find(params[:id])
  end


    def update
      @submission = Submission.find(params[:id])
      if @submission.update(submission_params)
        redirect_to proposal_submission_path
      else
        render 'edit'
      end
    end

  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy
    redirect_to '/'

  end

private

def submission_params
  params.require(:submission).permit(:title, :description, :avatar)
end

def set_proposal
  @proposal = Proposal.find(params[:proposal_id])
end


end
