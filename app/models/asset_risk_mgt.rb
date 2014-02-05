class AssetRiskMgt < ActiveRecord::Base
  attr_accessible :Applicable_Assets, :Applicable_Risk_Exceptions, :Compensating_Controls, 
  :Risk_Classification,:Risk_Classification1,:Risk_Classification2, :Risk_Mitigation_Strategy, 
  :Risk_Residual_Score, :Risk_Review_periodicity, :Risk_Score, :Risk_Title, 
  :Threats, :Vulnerabilities,:Threats1, :Vulnerabilities1
end
