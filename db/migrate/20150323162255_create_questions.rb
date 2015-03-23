class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :date
      t.string :question

      t.timestamps
    end
  end
end
