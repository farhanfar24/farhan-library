class Book < ApplicationRecord
    has_many :transactions, dependent: :destroy

    validates :title, :stock, presence: true

    before_create :assign_quota

    def assign_quota
        self.quota = self.stock
    end

    def decrease_quota
        self.update_column(:quota, self.quota - 1)
    end

    def increase_quota
        self.update_column(:quota, self.quota + 1)
    end
end
