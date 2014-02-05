# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140204114101) do

  create_table "analyses", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "status_description"
    t.string   "compensating_controls"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "asset_risk_mgts", :force => true do |t|
    t.string   "Risk_Title"
    t.string   "Applicable_Assets"
    t.string   "Threats"
    t.string   "Vulnerabilities"
    t.string   "Risk_Classification"
    t.integer  "Risk_Score"
    t.string   "Risk_Mitigation_Strategy"
    t.string   "Compensating_Controls"
    t.integer  "Risk_Residual_Score"
    t.string   "Applicable_Risk_Exceptions"
    t.string   "Risk_Review_periodicity"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "assets", :force => true do |t|
    t.string   "name"
    t.string   "related_bus"
    t.string   "label"
    t.string   "type"
    t.string   "liabilities"
    t.string   "owner"
    t.string   "guardian"
    t.string   "user"
    t.string   "classification"
    t.string   "container"
    t.string   "description"
    t.integer  "classification_id"
    t.integer  "labelling_id"
    t.integer  "document_id"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "auditactions", :force => true do |t|
    t.string   "title"
    t.string   "status"
    t.string   "duedate"
    t.string   "responsible"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "description"
    t.string   "external_reference"
    t.date     "closed_date"
  end

  create_table "biachecklists", :force => true do |t|
    t.string   "Divison_Department"
    t.string   "activity"
    t.string   "financial_loss"
    t.string   "Reputation_image"
    t.string   "Stakeholder_impact"
    t.string   "Regulatory_Statutory"
    t.string   "overall_rating"
    t.string   "comments"
    t.string   "mao"
    t.string   "person_interviewed"
    t.string   "facality"
    t.string   "date"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "bu_risk_mgts", :force => true do |t|
    t.string   "Risk_Title"
    t.string   "Applicable_Business_Units"
    t.string   "What_is_the_business_impact_if_this_threats_materializes"
    t.string   "Threats"
    t.string   "Vulnerabilities"
    t.string   "Risk_Classification"
    t.integer  "Risk_score"
    t.string   "Risk_Mitigation_Strategy"
    t.string   "Compensating_Continuity_Plans"
    t.integer  "Risk_Residual_Score"
    t.string   "Applicable_Risk_Exceptions"
    t.date     "Risk_Review_periodicity"
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
  end

  create_table "classifications", :force => true do |t|
    t.string   "c_type"
    t.string   "name"
    t.string   "a_type"
    t.string   "criteria"
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "crises", :force => true do |t|
    t.string   "crisis_id"
    t.string   "summary"
    t.string   "Datetime_occured"
    t.string   "Details"
    t.string   "crisis_status"
    t.string   "crisis_Category"
    t.string   "crisis_test"
    t.string   "crisis_type"
    t.string   "crisis_severity"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "dashboards", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emergencies", :force => true do |t|
    t.string   "ambulance"
    t.string   "electric"
    t.string   "fire"
    t.string   "gas_heat"
    t.string   "hospital"
    t.string   "insurance"
    t.string   "location"
    t.string   "newspaper"
    t.string   "police"
    t.string   "radio"
    t.string   "telephone"
    t.string   "tvchannel"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "excepts", :force => true do |t|
    t.string   "title"
    t.string   "impact"
    t.integer  "policy_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "groupname"
    t.string   "department"
    t.integer  "member_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "inventories", :force => true do |t|
    t.string   "op_function"
    t.string   "pro_name"
    t.string   "pro_owner"
    t.string   "asset_name"
    t.string   "des_asset"
    t.string   "type_asset"
    t.string   "personal_data"
    t.string   "personal_sensitive_data"
    t.string   "sensitive_customer_data"
    t.string   "classification"
    t.string   "integrity"
    t.string   "availability"
    t.string   "asset_custodian"
    t.string   "data_retention_period"
    t.string   "at_origin"
    t.string   "info_moved_des"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "labellings", :force => true do |t|
    t.string   "name"
    t.string   "criteria"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "membername"
    t.string   "department"
    t.string   "role"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "plans", :force => true do |t|
    t.string   "plan_title"
    t.string   "plan_objective"
    t.string   "auditmetric"
    t.string   "sucesscriteria"
    t.string   "launchcriteria"
    t.string   "sponsor"
    t.string   "responsible"
    t.string   "recoverableresponse"
    t.string   "planstatus"
    t.string   "recoverableplantype"
    t.string   "losstype"
    t.string   "emergencyresponse"
    t.string   "review"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
  end

  create_table "recommendations", :force => true do |t|
    t.string   "title"
    t.string   "status"
    t.string   "auditrecommendations"
    t.string   "reference"
    t.string   "primarytopic"
    t.string   "secondarytopic"
    t.string   "compliancetopic"
    t.string   "verification"
    t.string   "priority"
    t.string   "severity"
    t.date     "targetdate"
    t.date     "closeddate"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "recommendations_auditees", :force => true do |t|
    t.string   "title"
    t.string   "answer"
    t.date     "targetdate"
    t.string   "priority"
    t.string   "severity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "recommendations_compliances", :force => true do |t|
    t.string   "type"
    t.string   "organization"
    t.string   "targetlevel"
    t.string   "currentlevel"
    t.string   "noncompliance"
    t.string   "notice"
    t.string   "comment"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "recommendations_dependencies", :force => true do |t|
    t.string   "title"
    t.string   "recommendations"
    t.string   "duplicatereco"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "recommendations_documents", :force => true do |t|
    t.string   "title"
    t.string   "desc"
    t.string   "ref"
    t.string   "verified"
    t.string   "type"
    t.string   "confidential"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "reports", :force => true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "executivesummary"
    t.string   "source"
    t.date     "duedate"
    t.string   "status"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "audit_id"
    t.string   "origin"
    t.string   "audit_topic"
  end

  create_table "risk_classifications", :force => true do |t|
    t.string   "Classification_Type"
    t.string   "Name"
    t.string   "Classification_criteria"
    t.integer  "value"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "risk_exceptions", :force => true do |t|
    t.string   "Risk_Exception_Title"
    t.string   "Description"
    t.string   "Author"
    t.date     "Expiration"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "risks", :force => true do |t|
    t.string   "risk_id"
    t.string   "risk"
    t.string   "consequence_current"
    t.string   "consequence_target"
    t.string   "likelihood_current"
    t.string   "likelihood_target"
    t.string   "risk_level"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "standards", :force => true do |t|
    t.string   "title"
    t.string   "scope"
    t.string   "description"
    t.date     "startdate"
    t.date     "enddate"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "post"
    t.string   "name"
    t.string   "dept"
    t.string   "destination"
    t.string   "officeno"
    t.string   "mobile"
    t.string   "email"
    t.string   "responsible"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tests", :force => true do |t|
    t.string   "training_name"
    t.string   "training_date"
    t.string   "nexttraining_date"
    t.string   "trainingplan_feedback"
    t.string   "test_date"
    t.string   "test_type"
    t.string   "test_responsible"
    t.string   "test_feedback"
    t.string   "test_status"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "third_party_risk_mgts", :force => true do |t|
    t.string   "Risk_Title"
    t.string   "Applicable_Third_Parties"
    t.string   "Applicable_Assets"
    t.string   "Why_are_assets_shared_with_this_TP"
    t.string   "How_it_will_be_controled"
    t.string   "Threats"
    t.string   "Vulnerabilities"
    t.string   "Risk_Classification"
    t.integer  "Risk_Score"
    t.string   "Risk_Mitigation_Strategy"
    t.string   "Compensating_Controls"
    t.integer  "Risk_Residual_Score"
    t.string   "Applicable_Risk_Exceptions"
    t.date     "Risk_Review_Periodicity"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "attach_file_name"
    t.string   "attach_content_type"
    t.integer  "attach_file_size"
    t.datetime "attach_updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
