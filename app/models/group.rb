class Group < ApplicationRecord
    has_one_attached :image

    validates :name, presence: true
    validates :image, presence: true

    has_many :records, dependent: :delete_all
    belongs_to :author, class_name: 'User'
end
