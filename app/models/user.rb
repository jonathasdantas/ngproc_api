class User < ApplicationRecord
  has_many :process_movements
  has_many :justice_processes

  # Devise modules
  devise :database_authenticatable, :registerable,
         :trackable, :validatable
end
