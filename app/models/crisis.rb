class Crisis < ActiveRecord::Base
  attr_accessible :Datetime_occured, :Details, :crisis_Category, :crisis_id, :crisis_severity, 
  :crisis_status, :crisis_test, :crisis_type, :summary
end
