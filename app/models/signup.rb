class Signup < ActiveRecord::Base
  belongs_to :student
  belongs_to :clinic
end
