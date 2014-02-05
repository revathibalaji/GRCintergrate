class Classification < ActiveRecord::Base
  attr_accessible :a_type, :c_type, :criteria, :name, :value
  has_many :assets
end
