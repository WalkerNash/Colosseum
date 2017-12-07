class Submission < ApplicationRecord
  
  validates :user_id, presence: true
  belongs_to :user
  belongs_to :proposal
  has_many :comments, dependent: :destroy
  has_attached_file :avatar, styles: { large: "500x500>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/tomlol.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


end
