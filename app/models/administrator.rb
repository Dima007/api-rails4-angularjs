class Administrator < ActiveRecord::Base
  has_secure_password

  # def password= new_password
  #   self.pasword_digest = ::BCrypt::Password.create(new_password, cost: 10).to_s
  # end
  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
