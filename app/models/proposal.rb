class Proposal < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :submissions
  validates :user_id, presence: true
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/tomlol.jpg"
validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
