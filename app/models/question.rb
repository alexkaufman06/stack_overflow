class Question < ActiveRecord::Base
  has_many :responses
  validates :title, presence: true
  validates :date, presence: true
  validates :question, presence: true
end
