class Risk_classificationsPdf < Prawn::Document

	def initialize(risk_classification)
		super()
		@risk_classification = risk_classification
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Classification_Type: #{@risk_classification.Classification_Type}", :size =>  10		
		move_down(30)
		text " #{@risk_classification.Classification_Type1}", :size =>  10
		move_down(30)
		text "Name: #{@risk_classification.Name}", :size =>  10
		move_down(30)		
		text "Classification_criteriavalue: #{@risk_classification.Classification_criteria}", :size =>  10		
		move_down(30) 
		text "value: #{@risk_classification.value}", :size =>  10
		move_down(30)
		
	end
end

