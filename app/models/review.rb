class Review < ApplicationRecord
  belongs_to :user


  validates :content, presence: { message: "You need to fill in content" }
  validates :rating, presence: { message: "You need to provide a rating between 1 and 5" },
            numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
