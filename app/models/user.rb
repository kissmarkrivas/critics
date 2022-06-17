class User < ApplicationRecord
  # Validation
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validate :sixteen_or_older

  has_many :critics, dependent: :destroy

  private

  def sixteen_or_older
    return if birth_date <= 16.years.ago

    errors.add(:birth_date, "You should be 16 years old to create an account")
  end
end
