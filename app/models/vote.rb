class Vote < ActiveRecord::Base
  belongs_to :questions
  belongs_to :users
end
