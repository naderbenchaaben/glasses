class Price < ApplicationRecord
    validates :USD, presence: true, uniqueness: true 
    validates :GRP, presence: true, uniqueness: true
    validates :EUR, presence: true, uniqueness: true
    validates :JOD, presence: true, uniqueness: true
    validates :JPY, presence: true, uniqueness: true
end
