class Risk < ActiveRecord::Base
  attr_accessible :consequence_current, :consequence_target, :likelihood_current, 
  :likelihood_target, :risk, :risk_id, :risk_level, :attachment
  has_attached_file :attachment
end
