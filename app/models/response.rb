class Response < ActiveRecord::Base
  belongs_to :question

  validates :date, presence: true
  validates :response, presence: true
end
