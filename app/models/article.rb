# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  body        :text
#  is_featured :boolean
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :integer          not null
#  tenant_id   :integer          not null
#
# Indexes
#
#  index_articles_on_employee_id  (employee_id)
#  index_articles_on_tenant_id    (tenant_id)
#
# Foreign Keys
#
#  employee_id  (employee_id => employees.id)
#  tenant_id    (tenant_id => tenants.id)
#
class Article < ApplicationRecord
  belongs_to :employee
  belongs_to :tenant
end
