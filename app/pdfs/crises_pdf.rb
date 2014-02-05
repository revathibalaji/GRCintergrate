class CrisesPdf < Prawn::Document

	def initialize(crisis)
		super()
		@crisis = crisis
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Crisis ID: #{@crisis.crisis_id}", :size =>  10
		
	end
	def logo
         logopath =  "#{Rails.root}/public/images/fixnix.png"
         image logopath, :width => 177, :height => 65
         move_down 40
         draw_text "FixNix InfoSec Solutions", :at => [180, 575], size: 22
    end
end

