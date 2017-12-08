class User < ApplicationRecord
  has_many :proposals, dependent: :destroy
  has_many :submissions, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :user_name, presence: true, length: { minimum: 4, maximum: 16 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #Paperclip shit
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/default-avatar.jpg"

end
