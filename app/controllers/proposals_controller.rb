class ProposalsController < ApplicationController

  def index
    @proposals = Proposal.all
  end

  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.create(proposal_params)

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
  params.require(:proposal).permit(:avatar, :name, :short_desc)
end

end
