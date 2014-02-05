class Inventory < ActiveRecord::Base
  attr_accessible :asset_custodian, :asset_name, :at_origin, :availability, :classification, :data_retention_period, :des_asset, :info_moved_des, :integrity, :op_function, :personal_data, :personal_sensitive_data, :pro_name, :pro_owner, :sensitive_customer_data, :type_asset
end
