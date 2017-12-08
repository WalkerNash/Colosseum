class ProposalsController < ApplicationController

  before_action :authenticate_user!

  def index
    @proposals = Proposal.all
  end

# proposal is now built from the user instead of the proposal
  def new
    @proposal = current_user.proposals.build
  end

  def create
    @proposal = current_user.proposals.new(proposal_params)
    if @proposal.save
      redirect_to @proposal
    else
      render 'new'
  end
  end

  def edit
    @proposal = Proposal.find(params[:id])
  end

  def show
    @proposal = Proposal.find(params[:id])


  end

  def update
    @proposal = Proposal.find(params[:id])
    @proposal.update(proposal_params)
    redirect_to(proposal_path(@proposal))
  end

  def destroy
    @proposal = Proposal.find(params[:id])
    @proposal.destroy
    redirect_to proposals_path
  end

private

def proposal_params
  params.require(:proposal).permit(:avatar, :name, :short_desc, :fulldesc, :category, :location, :timelimit)
end

def set_proposal
  @proposal = Proposal.find(params[:id])
end

def authorized_user
  @proposal = current_user.proposals.find_by(id: params[:id])
  redirect_to proposals_path
end

end
