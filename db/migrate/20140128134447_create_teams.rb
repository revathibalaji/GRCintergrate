class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :post
      t.string :name
      t.string :dept
      t.string :destination
      t.string :officeno
      t.string :mobile
      t.string :email
      t.string :responsible

      t.timestamps
    end
  end
end
