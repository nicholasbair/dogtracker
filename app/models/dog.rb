class Dog < ActiveRecord::Base
  belongs_to :user
  has_many :activity_dogs
  has_many :activities, through: :activity_dogs
  validates :name, :user_id, presence: true
end
