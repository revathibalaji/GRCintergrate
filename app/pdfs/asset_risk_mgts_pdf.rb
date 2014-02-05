class Asset_risk_mgtsPdf < Prawn::Document

	def initialize(asset_risk_mgt)
		super()
		@asset_risk_mgt = asset_risk_mgt
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Risk_Title: #{@asset_risk_mgt.Risk_Title}", :size =>  10
		move_down(30)
		text "Applicable_Assets: #{@asset_risk_mgt.Applicable_Assets}", :size =>  10
		move_down(30)
		text "Threats:", :size =>  10
		text " #{@asset_risk_mgt.Threats}", :size =>  10
		move_down(30)
		text "", :size =>  10
		text " #{@asset_risk_mgt.Threats1}", :size =>  10
		move_down(30)
		text "Vulnerabilities:", :size =>  10
		text " #{@asset_risk_mgt.Vulnerabilities}", :size =>  10
		move_down(30) 
		text "", :size =>  10
		text " #{@asset_risk_mgt.Vulnerabilities1}", :size =>  10
		move_down(30)
		text "Risk_Classification: #{@asset_risk_mgt.Risk_Classification}", :size =>  10
		move_down(30)
		text "#{@asset_risk_mgt.Risk_Classification1}", :size =>  10
		move_down(30)
		text "#{@asset_risk_mgt.Risk_Classification2}", :size =>  10
		move_down(30)
		text "Risk_Score: #{@asset_risk_mgt.Risk_Score}", :size =>  10
		move_down(30)		
		text "Risk_Mitigation_Strategy:", :size =>  10
		text " #{@asset_risk_mgt.Risk_Mitigation_Strategy}", :size =>  10
		move_down(30)
		text "Compensating_Controls:", :size =>  10
		text " #{@asset_risk_mgt.Compensating_Controls}", :size =>  10
		move_down(30) 		
		
		text "Risk_Residual_Score: #{@asset_risk_mgt.Risk_Residual_Score}", :size =>  10
		move_down(30)
		text "Applicable_Risk_Exceptions: #{@asset_risk_mgt.Applicable_Risk_Exceptions}", :size =>  10
		move_down(30)
		text "Risk_Review_periodicity:", :size =>  10
		text " #{@asset_risk_mgt.Risk_Review_periodicity}", :size =>  10
		move_down(30)
		text "created_at:", :size =>  10
		text " #{@asset_risk_mgt.created_at}", :size =>  10
		move_down(30)
		text "updated_at:", :size =>  10
		text " #{@asset_risk_mgt.updated_at}", :size =>  10
	end
end

