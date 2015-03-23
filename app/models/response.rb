class Response < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  validates :date, presence: true
  validates :response, presence: true
end
