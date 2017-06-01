class ActivityDogs < ActiveRecord::Base
  belongs_to :dog
  belongs_to :activity
end
