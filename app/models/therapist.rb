class Therapist < ActiveRecord::Base
  has_many :therapists_clientses
  has_many :clients, through: :therapists_clientses
end
