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
#  company_id :integer          not null
#
# Indexes
#
#  index_employees_on_company_id  (company_id)
#
# Foreign Keys
#
#  company_id  (company_id => companies.id)
#
class Employee < ApplicationRecord
  belongs_to :company
end
