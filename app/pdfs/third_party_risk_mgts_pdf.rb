class Third_party_risk_mgts_Pdf < Prawn::Document

	def initialize(third_party_risk_mgt)
		super()
		@third_party_risk_mgt = third_party_risk_mgt
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Risk_Title: #{@third_party_risk_mgt.Risk_Title}", :size =>  10		
		move_down(30)
		text "Applicable_Third_Parties: #{@third_party_risk_mgt.Applicable_Third_Parties}", :size =>  10
		move_down(30)		
		text "Applicable_Assets: #{@third_party_risk_mgt.Applicable_Assets}", :size =>  10		
		move_down(30) 
		text "Why_are_assets_shared_with_this_TP: #{@third_party_risk_mgt.Why_are_assets_shared_with_this_TP}", :size =>  10
		move_down(30)
		text "How_it_will_be_controled: #{@third_party_risk_mgt.How_it_will_be_controled}", :size =>  10
		move_down(30)
		text "Threats: #{@third_party_risk_mgt.Threats}", :size =>  10
		move_down(30)
		text " #{@third_party_risk_mgt.Threats1}", :size =>  10
		move_down(30)
		text "Vulnerabilities: #{@third_party_risk_mgt.Vulnerabilities}", :size =>  10
		move_down(30)
		text " #{@third_party_risk_mgt.Vulnerabilities1}", :size =>  10
		move_down(30)
		text "Risk_Classification: #{@third_party_risk_mgt.Risk_Classification}", :size =>  10
		move_down(30)
		text " #{@third_party_risk_mgt.Risk_Classification1}", :size =>  10
		move_down(30)
		text " #{@third_party_risk_mgt.Risk_Classification2}", :size =>  10
		move_down(30)
		text "Risk_Score: #{@third_party_risk_mgt.Risk_Score}", :size =>  10
		move_down(30)
		text "Risk_Mitigation_Strategy: #{@third_party_risk_mgt.Risk_Mitigation_Strategy}", :size =>  10
		move_down(30)
		text "Compensating_Controls: #{@third_party_risk_mgt.Compensating_Controls}", :size =>  10
		move_down(30)
		text "Risk_Residual_Score: #{@third_party_risk_mgt.Risk_Residual_Score}", :size =>  10
		move_down(30)
		text "Applicable_Risk_Exceptions: #{@third_party_risk_mgt.Applicable_Risk_Exceptions}", :size =>  10
		move_down(30)
		text "Risk_Review_Periodicity: #{@third_party_risk_mgt.Risk_Review_Periodicity}", :size =>  10
		move_down(30)
		
	end
end

