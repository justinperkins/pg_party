class BigintBooleanList < ApplicationRecord
  list_partition_by :some_bool

  has_many :foos
  belongs_to :bar
end
