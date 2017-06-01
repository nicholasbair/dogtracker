class Activity < ActiveRecord::Base
  belongs_to :user
  has_many :activity_dogs
  has_many :dogs, through: :activity_dogs
  validates :name, :duration, :dog_id, presence: true
end
