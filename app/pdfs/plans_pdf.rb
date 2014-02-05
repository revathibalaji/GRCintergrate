class PlansPdf < Prawn::Document

	def initialize(plan)
		super()
		 @plan =  plan
		 logo
		stroke_horizontal_rule
		pad_top(50) {}
		text "Report",:align => :center, :size => 20, :style => :bold
		text "Plan Name: #{ @plan.plan_title}", :size =>  10
		move_down(30)
		
	end
	def logo
         logopath =  "#{Rails.root}/public/images/fixnix.png"
         image logopath, :width => 177, :height => 65
         move_down 40
         draw_text "FixNix InfoSec Solutions", :at => [180, 575], size: 22
    end
end


