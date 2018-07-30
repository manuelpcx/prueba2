class Task < ApplicationRecord
  has_many :taskcomplet
  has_many :users, through: :taskcomplet 
end
