class Student < ApplicationRecord
  belongs_to :part_time
  belongs_to :full_time
end
