class Signup < ActiveRecord::Base
  belongs_to :student
  belongs_to :clinic

  validates :student_id, presence: true
  validates :clinic_id, presence: true
end
