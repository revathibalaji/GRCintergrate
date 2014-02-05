class Test < ActiveRecord::Base
  attr_accessible :nexttraining_date, :test_date, :test_feedback, :test_responsible, :test_status, :test_type, :training_date, :training_name, :trainingplan_feedback
end
