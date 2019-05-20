class Idea < ApplicationRecord
  belongs_to :user

  validate :title, :content, :delivery_time

  validate :date_must_be_in_future

  private

  def date_must_be_in_future
    return if delivery_time

    errors.add(:delivery_time, "can't be in past") if delivery_time < DateTime.now
  end
end
