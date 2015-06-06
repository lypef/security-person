class Peticione < ActiveRecord::Base
	belongs_to :cliente 
	belongs_to :user
	default_scope {order ('id DESC')}
end