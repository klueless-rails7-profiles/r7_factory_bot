# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :integer          not null
#  youtube_id :string
#
# Indexes
#
#  index_videos_on_article_id  (article_id)
#
# Foreign Keys
#
#  article_id  (article_id => articles.id)
#
class Video < ApplicationRecord
  belongs_to :article
end
