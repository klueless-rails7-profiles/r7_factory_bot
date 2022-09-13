# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  active     :boolean
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  region_id  :integer          not null
#
# Indexes
#
#  index_companies_on_region_id  (region_id)
#
# Foreign Keys
#
#  region_id  (region_id => regions.id)
#
class Company < ApplicationRecord
  belongs_to :region
end
