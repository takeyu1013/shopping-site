class User < ApplicationRecord
  has_many :microposts
  has_many :cart_items, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
  has_secure_password

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
