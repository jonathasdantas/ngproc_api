class JudgingBody < ApplicationRecord
  belongs_to :district
  has_many :justice_processes
end
