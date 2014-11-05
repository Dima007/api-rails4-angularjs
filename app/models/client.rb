class Client < ActiveRecord::Base
  has_many :therapists_clientses
  has_many :therapists, through: :therapists_clientses
end
