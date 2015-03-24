class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :user_id
      t.string :question_id

      t.timestamps
    end
  end
end
