class CreateEmergencies < ActiveRecord::Migration
  def change
    create_table :emergencies do |t|
      t.string :ambulance
      t.string :electric
      t.string :fire
      t.string :gas_heat
      t.string :hospital
      t.string :insurance
      t.string :location
      t.string :newspaper
      t.string :police
      t.string :radio
      t.string :telephone
      t.string :tvchannel

      t.timestamps
    end
  end
end
