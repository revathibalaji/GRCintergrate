class TestsPdf < Prawn::Document

	def initialize(test)
		super()
		 @test =  test
		 logo
		stroke_horizontal_rule
		pad_top(50) {}
		text "Report",:align => :center, :size => 20, :style => :bold
		text "Test Name: #{ @test.training_name}", :size =>  10
		move_down(30)
		
	end
	def logo
         logopath =  "#{Rails.root}/public/images/fixnix.png"
         image logopath, :width => 177, :height => 65
         move_down 40
         draw_text "FixNix InfoSec Solutions", :at => [180, 575], size: 22
    end
end


