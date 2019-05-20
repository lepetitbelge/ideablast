class Idea < ApplicationRecord
  belongs_to :user

  validate :title, :content, :moment_to_be_delivered
end
