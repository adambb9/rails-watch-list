class Movie < ApplicationRecord
  has_many :bookmarks
  #attr_accessor :title, :overview, :poster_url, :rating

  validates :title, :overview, presence: true
  validates :title, uniqueness: true
  validates_associated :bookmarks
end
