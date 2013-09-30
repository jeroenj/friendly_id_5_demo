class Person < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  has_many :accounts, inverse_of: :person

  def should_generate_new_friendly_id?
    slug.blank? || name_changed?
  end
end
