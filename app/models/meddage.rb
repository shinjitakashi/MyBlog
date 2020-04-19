class Meddage < ApplicationRecord
    validates :title, lenghth: { maximum: 32 } , presence: true
    validates :message, lenghth: { maximum: 256 }, presence: true
    validates :name, lenghth: { maximum: 32 }
end
