class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates_associated :movie, :list
  validates :list_id, uniqueness: { scope: :movie_id}
end
