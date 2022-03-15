class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
  
    has_many :groups, foreign_key: 'author_id'
    has_many :records, foreign_key: 'author_id'
end
