class Bu_risk_mgts_Pdf < Prawn::Document

	def initialize(bu_risk_mgt)
		super()
		@bu_risk_mgt = bu_risk_mgt
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Risk_Title: #{@bu_risk_mgt.Risk_Title}", :size =>  10		
		move_down(30)
		text "Applicable_Business_Units: #{@bu_risk_mgt.Applicable_Business_Units}", :size =>  10
		move_down(30)		
		text "What_is_the_business_impact_if_this_threats_materializes: #{@bu_risk_mgt.What_is_the_business_impact_if_this_threats_materializes}", :size =>  10		
		move_down(30) 
		text "Threats: #{@bu_risk_mgt.Threats}", :size =>  10
		move_down(30)
		text "Vulnerabilities: #{@bu_risk_mgt.Vulnerabilities}", :size =>  10
		move_down(30)
		text "Risk_Classification: #{@bu_risk_mgt.Risk_Classification}", :size =>  10
		move_down(30)
		text " #{@bu_risk_mgt.Risk_Classification1}", :size =>  10
		move_down(30)
		text " #{@bu_risk_mgt.Risk_Classification2}", :size =>  10
		move_down(30)
		text "Risk_score: #{@bu_risk_mgt.Risk_score}", :size =>  10
		move_down(30)
		text "Risk_Mitigation_Strategy: #{@bu_risk_mgt.Risk_Mitigation_Strategy}", :size =>  10
		move_down(30)
		text "Compensating_Continuity_Plans: #{@bu_risk_mgt.Compensating_Continuity_Plans}", :size =>  10
		move_down(30)
		text "Risk_Residual_Score: #{@bu_risk_mgt.Risk_Residual_Score}", :size =>  10
		move_down(30)
		text "Applicable_Risk_Exceptions: #{@bu_risk_mgt.Applicable_Risk_Exceptions}", :size =>  10
		move_down(30)
		text "Risk_Review_periodicity: #{@bu_risk_mgt.Risk_Review_periodicity}", :size =>  10
		move_down(30)
		
	end
end

