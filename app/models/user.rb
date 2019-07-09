class User < ApplicationRecord
	has_one :father
	has_one :mother
	has_many :children
end
