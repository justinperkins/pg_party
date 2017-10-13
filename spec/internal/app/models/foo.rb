class Foo < ApplicationRecord
  belongs_to :bigint_date_range
  belongs_to :bigint_custom_id_int_range
  belongs_to :uuid_string_range
  belongs_to :bigint_boolean_list
  belongs_to :bigint_custom_id_int_list
  belongs_to :uuid_string_list
end
