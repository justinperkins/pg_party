class UuidStringRange < ApplicationRecord
  range_partition_by :some_string

  has_many :foos
  belongs_to :bar
end
