class BigintCustomIdIntRange < ApplicationRecord
  range_partition_by :some_int

  has_many :foos
  belongs_to :bar
end
