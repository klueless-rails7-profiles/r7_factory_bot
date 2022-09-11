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
#  tenant_id  :integer          not null
#
# Indexes
#
#  index_projects_on_tenant_id  (tenant_id)
#
# Foreign Keys
#
#  tenant_id  (tenant_id => tenants.id)
#
class Project < ApplicationRecord
  belongs_to :tenant
end
