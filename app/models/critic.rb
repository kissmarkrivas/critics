class Critic < ApplicationRecord
  # after_create :increment_critics_coun
  # after_destroy :decrement_critics_coun

  #validations
  validates :title, :body, presence: true
  validates :title, length: {maximum: 40}

  #Asosociations
  belongs_to :user, counter_cache: true
  belongs_to :criticable, polymorphic: true

  # private

  # def increment_critics_coun
  #   critic_user = user
  #   critic_user.critics_coun += 1
  #   critic_user.save
  # end

  # def decrement_critics_coun
  #   critic_user = user
  #   critic_user.critics_coun -= 1
  #   critic_user.save
  # end
end
