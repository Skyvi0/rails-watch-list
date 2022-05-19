class Movie < ApplicationRecord
  validates :title, presence: true
  validates_uniqueness_of :title
  validates :overview, presence: true
  has_many :bookmarks
end
