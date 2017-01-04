class ProcessMovement < ApplicationRecord
  belongs_to :user
  belongs_to :justice_process
end
