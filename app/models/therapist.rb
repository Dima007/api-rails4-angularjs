class Therapist < ActiveRecord::Base
  has_secure_password
  
  has_many :relationships
  has_many :clients, through: :relationships

  def password= new_password
    self.pasword_digest = ::BCrypt::Password.create(new_password, cost: 10).to_s
  end
end
