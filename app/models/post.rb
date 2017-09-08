class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :admin

  scope :most_recent, -> { order(published_at: :desc) }
  scope :published, -> { where(published: true) }

  def should_generate_new_friendly_id?
    title_changed?
  end

  def published_date
    "Posted #{published_at.strftime('%-b %-d, %Y')}"
  end

  def publish
    update(published: true, published_at: Time.now)
  end

  def unpublish
    update(published: false, published_at: nil)
  end
end
