class Review < ActiveRecord::Base
    belongs_to :students
    belongs_to :tms
end