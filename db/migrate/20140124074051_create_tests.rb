class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :training_name
      t.string :training_date
      t.string :nexttraining_date
      t.string :trainingplan_feedback
      t.string :test_date
      t.string :test_type
      t.string :test_responsible
      t.string :test_feedback
      t.string :test_status

      t.timestamps
    end
  end
end
