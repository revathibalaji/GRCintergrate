class PoliciesPdf < Prawn::Document

	def initialize(policy)
		super()
		@policy = policy
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Policy title: #{@policy.p_name}", :size =>  10
		
	end
end

