class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :date
      t.string :response
      t.integer :question_id

      t.timestamps
    end
  end
end
