class CreateBiachecklists < ActiveRecord::Migration
  def change
    create_table :biachecklists do |t|
      t.string :Divison_Department
      t.string :activity
      t.string :financial_loss
      t.string :Reputation_image
      t.string :Stakeholder_impact
      t.string :Regulatory_Statutory
      t.string :overall_rating
      t.string :comments
      t.string :mao
      t.string :person_interviewed
      t.string :facality
      t.string :date

      t.timestamps
    end
  end
end
