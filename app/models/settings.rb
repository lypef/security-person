class Peticione < ActiveRecord::Base
	default_scope {order ('id DESC')}
end