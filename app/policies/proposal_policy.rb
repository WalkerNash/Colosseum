class ProposalPolicy < ApplicationPolicy
  attr_reader :proposal

  def initialize(user, proposal)
    super(user, proposal)
    @proposal = resource
  end

  def create?
    user.company? || proposal.try(:contractor) == user
  end

  def update?
    user.company? || proposal.try(:contractor) == user
  end
end
