class Task < ApplicationRecord
  include Visible

  belongs_to :list

  validates :title, presence: true
end
