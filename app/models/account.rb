class Account < ActiveRecord::Base
  extend FriendlyId
  
  friendly_id :name, use: :slugged
  belongs_to :person
end
