class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :book

  before_create :generate_number
  after_destroy :return_quota

  def generate_number
    self.number = loop do
      code = SecureRandom.hex(3).upcase
      random_number = "T#{code}"
      break random_number unless Transaction.exists?(number: random_number)
    end
  end

  def return_quota
    self.book.increase_quota
  end
end
