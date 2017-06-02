class Dog < ActiveRecord::Base
  belongs_to :user
  has_many :activity_dogs
  has_many :activities, through: :activity_dogs
  validates :user_id, presence: true
  validates :name, uniqueness: {
    scope: :user,
    message: "must be unique"
  }
end
