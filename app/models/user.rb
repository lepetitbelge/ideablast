class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ideas

  validates_presence_of :username, :email, :password
  validate :date_must_be_in_future

  private

  def date_must_be_in_future
    return if moment_to_be_delivered

    errors.add(:moment_to_be_delivered, "can't be in past") if moment_to_be_delivered < DateTime.now
  end
end
