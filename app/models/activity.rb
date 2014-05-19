class Activity < ActiveRecord::Base
	belongs_to :occurrence
	validates :note, :time_elapsed, presence: true

	rails_admin do 
    	object_label_method do
      		:custom_label_method
    	end
	    list do
      		field :note do
      			label "note"
      		end
      		field :time_elapsed do
      			label "elapsed time"
      		end
      		field :occurrence do
      			label "occurrence"
      		end
	    end
    end	

	def custom_label_method
			"#{self.time_elapsed.to_s}"
	end	
end
