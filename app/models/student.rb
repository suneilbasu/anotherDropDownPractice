class Student < ActiveRecord::Base
  belongs_to :tutor
  def self.search(search)
		if search
			where("tutor_id ?","%#{tutor_id}%")
		else
			all
		end
	end
end
