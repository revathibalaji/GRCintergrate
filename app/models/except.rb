class Except < ActiveRecord::Base
  attr_accessible :impact, :title, :policy_id
  belongs_to :policy
end
