class Bar < ApplicationRecord
  has_many :bigint_date_ranges
  has_many :bigint_custom_id_int_ranges
  has_many :uuid_string_ranges
  has_many :bigint_boolean_lists
  has_many :bigint_custom_id_int_lists
  has_many :uuid_string_lists
end
