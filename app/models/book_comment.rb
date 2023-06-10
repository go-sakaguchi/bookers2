class BookComment < ApplicationRecord
  belongs_to :user
  belongs_to :books
  
  validates :comment, presence: true
end
