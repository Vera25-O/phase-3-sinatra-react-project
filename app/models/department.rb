class Department < ActiveRecord::Base
    has_many :tasks
    has_many :employees
end