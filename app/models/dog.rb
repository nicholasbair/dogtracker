class Dog < ActiveRecord::Base
  belongs_to :user
  has_many :activities
  validates :name, :user_id, presence: true
end
