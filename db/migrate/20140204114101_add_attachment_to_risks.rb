class AddAttachmentToRisks < ActiveRecord::Migration
   def self.up
  add_column :risks, :attachment_file_name, :string
  add_column :risks, :attachment_content_type, :string
  add_column :risks, :attachment_file_size, :integer
  add_column :risks, :attachment_updated_at, :datetime
 end

 def self.down
  remove_column :risks, :attachment_file_size
  remove_column :risks, :attachment_content_type
  remove_column :risks, :attachment_file_name
  remove_column :risks, :attachment_updated_at
 end
end
