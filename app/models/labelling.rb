class Labelling < ActiveRecord::Base
  attr_accessible :criteria, :name
  has_many :assets
end
