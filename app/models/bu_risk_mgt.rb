class BuRiskMgt < ActiveRecord::Base
  attr_accessible :Applicable_Business_Units, :Applicable_Risk_Exceptions, :Compensating_Continuity_Plans, :Risk_Classification, :Risk_Classification1,:Risk_Classification2, :Risk_Mitigation_Strategy, :Risk_Residual_Score, :Risk_Review_periodicity, :Risk_Title, :Risk_score, :Threats, :Vulnerabilities, :What_is_the_business_impact_if_this_threats_materializes
end
