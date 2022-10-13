class User < ApplicationRecord
    has_many :transactions, dependent: :destroy

    validates :name, :email, :phone_number, :address, presence: true
end
