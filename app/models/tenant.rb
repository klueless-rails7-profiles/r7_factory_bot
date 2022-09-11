# == Schema Information
#
# Table name: tenants
#
#  id         :integer          not null, primary key
#  active     :boolean
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  app_id     :integer          not null
#
# Indexes
#
#  index_tenants_on_app_id  (app_id)
#
# Foreign Keys
#
#  app_id  (app_id => apps.id)
#
class Tenant < ApplicationRecord
  belongs_to :app
end
