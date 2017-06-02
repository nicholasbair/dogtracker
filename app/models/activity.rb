# Boot Error -> something went wrong while loading config.ru
# require 'verbs'

class Activity < ActiveRecord::Base
  belongs_to :user
  has_many :activity_dogs
  has_many :dogs, through: :activity_dogs
  validates :name, :duration, presence: true

  def action_past_tense

  # *** Both work in tux
  # undefined method 'verb' for 'walk':String
    # 'walk'.verb.conjugate :tense => :past, :plurality => :singular, :aspect => :perfective
    # => 'walked'
  # NameError, uninitialized constant Activity::Verbs
    # Verbs::Conjugator.conjugate self.name, :tense => :past, :plurality => :singular, :aspect => :perfective
    # => 'walked'
  end

  def generate_story
    "#{self.user.username} #{self.action_past_tense} for #{self.duration} minutes."
  end
end
