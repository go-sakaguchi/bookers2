class BookComment < ApplicationRecord
  belongs_to :user
  belongs_to :books, optional: true

  validates :comment, presence: true
end
