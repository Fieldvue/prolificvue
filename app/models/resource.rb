class Resource < ActiveRecord::Base
  belongs_to :resource_type
  validates :title, presence: true
  validates :resource_type_id, presence: true
  validates :link, presence: true 
end
