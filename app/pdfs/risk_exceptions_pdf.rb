class Risk_exceptionsPdf < Prawn::Document

	def initialize( risk_exception)
		super()
		 @risk_exception =  risk_exception
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Risk_Exception_Title: #{ @risk_exception.Risk_Exception_Title}", :size =>  10
		move_down(30)
		text "Description: #{ @risk_exception.Description}", :size =>  10
		move_down(30)
		text "Author: #{ @risk_exception.Author}", :size =>  10
		move_down(30)
		text "ExpirationExpiration: #{ @risk_exception.Expiration}", :size =>  10
		move_down(30)
	end
end