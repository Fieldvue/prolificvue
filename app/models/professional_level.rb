class ProfessionalLevel < ActiveRecord::Base
  belongs_to :user
  has_many :resources
end
