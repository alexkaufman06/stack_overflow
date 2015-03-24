require 'rails_helper'

describe Question do
  it { should validate_presence_of :title }
  it { should validate_presence_of :date }
  it { should validate_presence_of :question }

  it { should have_many :responses }
  it { should have_many :votes }

  describe "number_of_votes" do
    it "returns the number of votes for the question" do
      question = FactoryGirl.create(:question)
      Vote.create(question_id: question.id)
      Vote.create(question_id: question.id)
      expect(question.number_of_votes).to eq(2)
    end
  end
end
