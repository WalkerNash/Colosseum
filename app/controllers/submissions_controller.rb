class SubmissionsController < ApplicationController



  def index
    @submissions = Submission.all
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def new
    @submission = Submission.new
  end

  def edit
    @submission = Submission.find(params[:id])
  end

  def create

    @submission = @proposal.submissions.new(submission_params)

    if @submission.save
      redirect_to @submission
    else
      render 'new'
  end
  end

  def update
    @submission = Submission.find(params[:id])

    if @submission.update(submission_params)
      redirect_to @submission
    else
      render 'edit'
    end
  end

  def destroy
    @submission = @proposal.submissions.find(params[:id])
    @submission.destroy

    redirect_to proposal_path(@proposal)
end

private

def submission_params
  params.require(:submission).permit(:name, :description, :avatar)
end
def set_proposal
  @proposal = Proposal.find(params[:id])
end
end
