# == Schema Information
#
# Table name: employee_roles
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :integer          not null
#  role_id     :integer          not null
#
# Indexes
#
#  index_employee_roles_on_employee_id  (employee_id)
#  index_employee_roles_on_role_id      (role_id)
#
# Foreign Keys
#
#  employee_id  (employee_id => employees.id)
#  role_id      (role_id => roles.id)
#
class EmployeeRole < ApplicationRecord
  belongs_to :employee
  belongs_to :role
end
