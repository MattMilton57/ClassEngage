class Teacher < ApplicationRecord
    has_many :class_periods
    has_many :students, through: :class_periods
    has_many :assessments
end
