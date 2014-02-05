class Emergency < ActiveRecord::Base
  attr_accessible :ambulance, :electric, :fire, :gas_heat, :hospital, :insurance, :location, :newspaper, :police, :radio, :telephone, :tvchannel
end
