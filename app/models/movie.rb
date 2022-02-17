class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, :overview, presence: true
  validates :title, uniqueness: true
  validates :category, inclusion: { in: CATEGORIES }
end
