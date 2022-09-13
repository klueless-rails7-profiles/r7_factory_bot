# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  body        :text
#  is_featured :boolean
#  published   :datetime
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :integer          not null
#  employee_id :integer          not null
#
# Indexes
#
#  index_articles_on_company_id   (company_id)
#  index_articles_on_employee_id  (employee_id)
#
# Foreign Keys
#
#  company_id   (company_id => companies.id)
#  employee_id  (employee_id => employees.id)
#
class Article < ApplicationRecord
  belongs_to :employee
  belongs_to :company
end
