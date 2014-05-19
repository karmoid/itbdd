class Occurrence < ActiveRecord::Base
	belongs_to :subject
	has_many :activities
	validates :title, :raised_at, presence: true
	scope :actifs, -> { where(active: true) }

	rails_admin do 
    	object_label_method do
      		:custom_label_method
    	end
	    list do
	    	field :title do
        		label "title"
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
      		field :note
      		field :active
      		field :raised_at
      		field :activities
	    end
    end	

	def custom_label_method
		if !self.title.nil?
			"#{self.title.titleize} - #{self.raised_at.to_s}"
		end	
	end
end
