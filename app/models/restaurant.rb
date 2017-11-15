class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  validates :name, :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
end
