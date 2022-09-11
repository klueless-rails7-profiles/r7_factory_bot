# == Schema Information
#
# Table name: employees
#
#  id         :integer          not null, primary key
#  address    :text
#  email      :string
#  first_name :string
#  last_name  :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tenant_id  :integer          not null
#
# Indexes
#
#  index_employees_on_tenant_id  (tenant_id)
#
# Foreign Keys
#
#  tenant_id  (tenant_id => tenants.id)
#
class Employee < ApplicationRecord
  belongs_to :tenant
end
