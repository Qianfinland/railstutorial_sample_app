class User < ActiveRecord::Base
  validates :name, presence: true
  #equal to above
  #validates(:name, presence: true)

  validates :email, presence: true
end
