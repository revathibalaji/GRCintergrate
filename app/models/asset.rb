class Asset < ActiveRecord::Base
  attr_accessible :classification, :container, :description, :guardian, :label, :liabilities, :name, :owner, :related_bus, :type, :user , :classification_id, :labelling_id 
  
  belongs_to :classifications
  belongs_to :labellings
  belongs_to :documents
end
