class CreateCrises < ActiveRecord::Migration
  def change
    create_table :crises do |t|
      t.string :crisis_id
      t.string :summary
      t.string :Datetime_occured
      t.string :Details
      t.string :crisis_status
      t.string :crisis_Category
      t.string :crisis_test
      t.string :crisis_type
      t.string :crisis_severity

      t.timestamps
    end
  end
end
