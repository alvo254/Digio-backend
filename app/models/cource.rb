class Course < ActiveRecord::Base
    has_many :students
    has_many :tms, through: :students
end