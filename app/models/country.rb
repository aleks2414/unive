class Country < ActiveRecord::Base
	has_many :universities, dependent: :destroy
end
