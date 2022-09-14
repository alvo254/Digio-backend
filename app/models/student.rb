class Student < ActiveRecord::Base
    belongs_to :courses
    belongs_to :tms
end