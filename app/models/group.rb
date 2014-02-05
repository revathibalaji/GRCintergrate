class Group < ActiveRecord::Base
  attr_accessible :department, :groupname , :member_id
  has_many :members , :except
end
