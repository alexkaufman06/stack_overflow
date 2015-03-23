class Question < ActiveRecord::Base
  validates :title, presence: true
  validates :date, presence: true
  validates :question, presence: true
end
