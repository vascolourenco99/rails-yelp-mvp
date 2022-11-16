class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates :name, :address, :phone_number, presence: true
    validates :address, :phone_number, confirmation: true
    validates :category, inclusion: { in: %w(chinese italian japanese french belgian)}
end
