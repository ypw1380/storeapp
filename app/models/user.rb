class User < ActiveRecord::Base
  has_secure_password
  validates_confirmation_of :password
  validates_presence_of :password, on: :create
  has_many :orders
  has_many :cards
  validates_uniqueness_of :email
  validates :email, confirmation: true
  validates :name, presence: true
end
