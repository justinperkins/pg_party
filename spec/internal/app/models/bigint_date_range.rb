class BigintDateRange < ApplicationRecord
  range_partition_by "created_at::date"

  has_many :foos
  belongs_to :bar
end
