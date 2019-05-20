class User < ApplicationRecord
  attr_writer :login
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ideas

  validates_presence_of :username, :email, :password
  validates :username, uniqueness: true

  def login
    @login || self.username || self.email
  end
end
