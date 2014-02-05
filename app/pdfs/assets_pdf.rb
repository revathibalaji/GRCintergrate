class AssetsPdf < Prawn::Document

	def initialize(asset)
		super()
		@asset = asset
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Asset Name: #{@asset.name}", :size =>  10
		move_down(30)
		text "Related Bus: #{@asset.related_bus}", :size =>  10
		move_down(30)
		text "Asset Label: #{@asset.label}", :size =>  10
		move_down(30)
		text "Asset Type: #{@asset.type}", :size =>  10
		move_down(30)
		text "Liabilities: #{@asset.liabilities}", :size =>  10
		move_down(30)
		text "Ower: #{@asset.owner}", :size =>  10
		move_down(30)
		text "Guardian: #{@asset.guardian}", :size =>  10
		move_down(30)
		text "User: #{@asset.user}", :size =>  10
		move_down(30)
		text "Classification: #{@asset.classification}", :size =>  10
		move_down(30)
		text "Container: #{@asset.container}", :size =>  10
		move_down(30)
		
	end
end