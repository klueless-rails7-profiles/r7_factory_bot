# == Schema Information
#
# Table name: apps
#
#  id          :integer          not null, primary key
#  description :string
#  settings    :json
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class App < ApplicationRecord
end
