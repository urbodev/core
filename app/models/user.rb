class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :birthdate,   presence: true

  def name
    "#{first_name} #{last_name}"
  end
end
