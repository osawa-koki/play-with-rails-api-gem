# frozen_string_literal: true

# Pagination
class Pagination
  def initialize(data:)
    @data = data
  end

  def pagination
    {
      current_page: @data.current_page,
      next_page: @data.next_page,
      prev_page: @data.prev_page,
      total_pages: @data.total_pages,
      total_count: @data.total_count
    }
  end
end
