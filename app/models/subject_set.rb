class SubjectSet < ActiveRecord::Base
	has_many :subjects
	validates :name, :note, presence: true
	rails_admin do 
    	object_label_method do
      		:custom_label_method
    	end
	    list do
	    	field :name do
        		label "Title"
				formatted_value do # used in form views
					value.to_s.upcase
				end

				pretty_value do # used in list view columns and show views, defaults to formatted_value for non-association fields
					value.titleize
				end

				export_value do
					value.camelize # used in exports, where no html/data is allowed
				end

      		end
      		field :note do
      			label "Note"
      		end
	    end
    end	

	def custom_label_method
		"#{self.name.titleize}"
	end

end
