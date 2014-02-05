class CreateRisks < ActiveRecord::Migration
  def change
    create_table :risks do |t|
      t.string :risk_id
      t.string :risk
      t.string :consequence_current
      t.string :consequence_target
      t.string :likelihood_current
      t.string :likelihood_target
      t.string :risk_level

      t.timestamps
    end
  end
end
