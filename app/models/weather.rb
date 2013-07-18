class Weather < ActiveRecord::Base
  attr_accessible :date, :max_temp, :min_temp
end
