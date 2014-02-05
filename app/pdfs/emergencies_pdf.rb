class EmergenciesPdf < Prawn::Document

	def initialize(emergency)
		super()
		@emergency = emergency
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Police Station: #{@emergency.police}", :size =>  10
		move_down(30)
		text "Fire Station: #{@emergency.fire}", :size =>  10
		move_down(30)
		text "Ambulance: #{@emergency.ambulance}", :size =>  10
		move_down(30)
	end
	def logo
         logopath =  "#{Rails.root}/public/images/fixnix.png"
         image logopath, :width => 177, :height => 65
         move_down 40
         draw_text "FixNix InfoSec Solutions", :at => [180, 575], size: 22
    end
end

