# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string
#  settings   :json
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Region < ApplicationRecord
end
