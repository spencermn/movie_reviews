class Review < ApplicationRecord
  belongs_to :movie

  validates :reviewer, presence: true
  validates :rating, presence: true

  # I need to change the rating column to be an int before this will work
  # validates :rating, presence: true, inclusion: { in: 1..5 }
end
