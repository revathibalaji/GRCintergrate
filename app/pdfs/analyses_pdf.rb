class AnalysesPdf < Prawn::Document

	def initialize(analysis)
		super()
		@analysis = analysis
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Name: #{@analysis.name}", :size =>  10
		move_down(30)
		text "Description: #{@analysis.description}", :size =>  10
		move_down(30)
		text "Status: #{@analysis.status}", :size =>  10
		move_down(30)
		text "Status Description: #{@analysis.status_description}", :size =>  10
		move_down(30)
		text "Compensating Control: #{@analysis.compensating_controls}", :size =>  10
		move_down(30)
		
	end
end