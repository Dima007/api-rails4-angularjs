class Client < ActiveRecord::Base
  has_many :relationships
  has_many :therapists, through: :relationships
end
