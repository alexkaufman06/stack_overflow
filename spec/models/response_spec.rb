require 'rails_helper'

describe Response do
  it { should validate_presence_of :date }
  it { should validate_presence_of :response }
  it { should belong_to :question }
end
