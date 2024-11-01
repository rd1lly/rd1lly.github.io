module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['Open', 'Closed']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  def open?
    status == 'Open'
  end

  def closed?
    status == 'Closed'
  end

  class_methods do
    def open_count
      where(status: 'Open').count
    end

    def closed_count
        where(status: 'Closed').count
    end

    def total_count
      count
    end
  end
end