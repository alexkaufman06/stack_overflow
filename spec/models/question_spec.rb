require 'rails_helper'

describe Question do
  it { should validate_presence_of :title }
  it { should validate_presence_of :date }
  it { should validate_presence_of :question }

  it { should have_many :responses }
end
