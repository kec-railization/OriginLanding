class Guest < ActiveRecord::Base
	validates_presence_of :email
end
