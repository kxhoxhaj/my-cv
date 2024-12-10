class User < ApplicationRecord
  has_one :review, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  before_validation :downcase_email

  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }

  def admin?
    self.admin
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private

  def downcase_email
    self.email = email.to_s.downcase.strip
  end
end
