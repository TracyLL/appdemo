class User < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 50 }
end
