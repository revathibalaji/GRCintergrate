class InventoriesPdf < Prawn::Document

	def initialize(inventory)
		super()
		@inventory = inventory
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Operating Unit / Funtion: #{@inventory.op_function}", :size =>  10
		move_down(30)
		text "Process Name: #{@inventory.pro_name}", :size =>  10
		move_down(30)
		text "Process Owner: #{@inventory.pro_owner}", :size =>  10
		move_down(30)
		text "Asset Name: #{@inventory.asset_name}", :size =>  10
		move_down(30)
		text "Description of Asset: #{@inventory.des_asset}", :size =>  10
		move_down(30)
		text "Type of Asset: #{@inventory.type_asset}", :size =>  10
		move_down(30)
		text "Personal Data: #{@inventory.personal_data}", :size =>  10
		move_down(30)
		text "Personal Sensitive Data: #{@inventory.personal_sensitive_data}", :size =>  10
		move_down(30)
		text "Sensitive Customer Data: #{@inventory.sensitive_customer_data}", :size =>  10
		move_down(30)
		text "Classification: #{@inventory.classification}", :size =>  10
		move_down(30)
		text "Integrity: #{@inventory.integrity}", :size =>  10
		move_down(30)
		text "Availability: #{@inventory.availability}", :size =>  10
		move_down(30)
		text "Asset Custodian: #{@inventory.asset_custodian}", :size =>  10
		move_down(30)
		text "Data Retention Period: #{@inventory.data_retention_period}", :size =>  10
		move_down(30)
		text "At Origin: #{@inventory.at_origin}", :size =>  10
		move_down(30)
		text "Information is Moved: #{@inventory.info_moved_des}", :size =>  10
		move_down(30)
		
	end
end