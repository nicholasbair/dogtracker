class Activity < ActiveRecord::Base
  belongs_to :dog
  validates :name, :duration, :dog_id, presence: true
end
