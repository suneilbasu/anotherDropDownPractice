class Student < ActiveRecord::Base
  belongs_to :tutor

  def self.search(search)
  	if search
  		where(["tutor_id LIKE ?","%#{search}"])
  	else
  		all
  	end
  end
end
