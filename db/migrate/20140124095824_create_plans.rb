class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :plan_title
      t.string :plan_objective
      t.string :auditmetric
      t.string :sucesscriteria
      t.string :launchcriteria
      t.string :sponsor
      t.string :responsible
      t.string :recoverableresponse
      t.string :planstatus
      t.string :recoverableplantype
      t.string :losstype
      t.string :emergencyresponse
      t.string :review
      t.references :document
      t.references :user
      t.timestamps
    end
  end
end
