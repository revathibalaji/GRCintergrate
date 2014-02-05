class Member < ActiveRecord::Base
  attr_accessible :department, :membername, :role
  belongs_to :groups
end
