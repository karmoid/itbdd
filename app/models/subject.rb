class Subject < ActiveRecord::Base
	belongs_to :subject_set
	has_many :occurrences
	validates :title, :note, presence: true
end
