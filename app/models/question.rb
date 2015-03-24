class Question < ActiveRecord::Base
  has_many :responses
  has_many :votes
  belongs_to :user
  validates :title, presence: true
  validates :date, presence: true
  validates :question, presence: true

  def number_of_votes
    votes.count
  end
end
