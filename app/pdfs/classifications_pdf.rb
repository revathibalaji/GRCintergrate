class ClassificationsPdf < Prawn::Document

	def initialize(classification)
		super()
		@classification = classification
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Classification Type: #{@classification.c_type}", :size =>  10
		move_down(30)
		text "Asset Name: #{@classification.name}", :size =>  10
		move_down(30)
		text "Asset Type: #{@classification.a_type}", :size =>  10
		move_down(30)
		text "Classification Criteria: #{@classification.criteria}", :size =>  10
		move_down(30)
		text "Value: #{@classification.value}", :size =>  10
		move_down(30)
		
	end
end