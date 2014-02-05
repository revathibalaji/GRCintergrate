class LabellingsPdf < Prawn::Document

	def initialize( labelling)
		super()
		 @labelling =  labelling
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Name: #{ @labelling.name}", :size =>  10
		move_down(30)
		text "Criteria: #{ @labelling.criteria}", :size =>  10
		move_down(30)
		
		
	end
end