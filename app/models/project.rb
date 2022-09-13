# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  budget     :decimal(, )
#  country    :string
#  name       :string
#  progress   :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :integer          not null
#
# Indexes
#
#  index_projects_on_company_id  (company_id)
#
# Foreign Keys
#
#  company_id  (company_id => companies.id)
#
class Project < ApplicationRecord
  belongs_to :company
end
