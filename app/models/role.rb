# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  code        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Role < ApplicationRecord
end
