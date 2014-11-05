class MyClient < ActiveRecord::Base
  belongs_to :owner, class_name: User

  validates :name, presence: true
  validates :surname, presence: true
end
