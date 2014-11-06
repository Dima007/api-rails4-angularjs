class Therapist < ActiveRecord::Base
  has_secure_password
  
  has_many :relationships
  has_many :clients, through: :relationships

end
