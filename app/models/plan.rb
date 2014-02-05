class Plan < ActiveRecord::Base
  attr_accessible :auditmetric, :emergencyresponse, :launchcriteria, :losstype, :plan_objective, 
  :plan_title, :planstatus, :recoverableplantype, :recoverableresponse, :responsible, :review, :sponsor, 
  :sucesscriteria, :attachment
   has_attached_file :attachment

end
