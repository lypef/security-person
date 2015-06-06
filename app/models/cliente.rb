class Cliente < ActiveRecord::Base
	has_many :peticiones
end
