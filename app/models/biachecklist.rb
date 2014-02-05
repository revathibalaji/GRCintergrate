class Biachecklist < ActiveRecord::Base
  attr_accessible :Divison_Department, :Regulatory_Statutory, :Reputation_image, :Stakeholder_impact,
   :activity, :comments, :date, :facality, :financial_loss, :mao, :overall_rating, :person_interviewed
end
