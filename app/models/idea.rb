class Idea < ApplicationRecord
  belongs_to :user

  validate :title, :content, :delivery_time
end
