class Comment < ActiveRecord::Base
  belongs_to :clinic

  validates :asker, presence: true
  validates :body, presence: true
  validates :clinic_id, presence: true
end
