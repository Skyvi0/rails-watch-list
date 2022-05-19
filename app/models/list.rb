class List < ApplicationRecord
  validates :name, presence: true
  validates_uniqueness_of :name
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  # def connect
  #   create_table :assignments do |t|
  #     t.references :city, index: true, foreign_key: true
  #     t.references :cleaner, index: true, foreign_key: true

  #     t.timestamps null: false
  #   end
  # end
end
