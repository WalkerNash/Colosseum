class Proposal < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :submissions
  validates :user_id, presence: true
  has_attached_file :avatar, styles: { large: "500x500>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/default-avatar.jpg"
validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  CATEGORIES = ['Web UX Design', 'Mobile Development (iOS)', 'Mobile Development (Android)', 'Mobile Development (Other)', 'Software Development', 'Web Development (Front-end)', 'Web Development (Server-side)', 'Web Development (Full-stack)', 'Other']
  LOCATIONS = ['Philadelphia', 'New York', 'Washington D.C', 'Boston', 'Chicago', 'Austin', 'Dallas', 'San Francisco', 'Los Angeles', 'San Diego', 'Seattle', 'Portland', 'Denver'] 
end
