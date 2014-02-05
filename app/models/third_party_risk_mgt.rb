class ThirdPartyRiskMgt < ActiveRecord::Base
  attr_accessible :Risk_Title, :Applicable_Third_Parties, :Applicable_Assets, :Why_are_assets_shared_with_this_TP ,:How_it_will_be_controled , :Threats,:Threats1 , :Vulnerabilities ,:Vulnerabilities1 ,:Risk_Classification ,:Risk_Classification1 ,:Risk_Classification2 ,:Risk_Score ,:Risk_Mitigation_Strategy ,:Compensating_Controls ,:Risk_Residual_Score ,:Applicable_Risk_Exceptions ,:Risk_Review_Periodicity
end
