class User < ApplicationRecord
  has_one :review, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  def admin?
    self.admin
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
