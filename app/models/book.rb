class Book < ActiveRecord::Base
	self.per_page = 3
	validates :name, uniqueness: true
	validates :author, presence: true
	#validates :cost, numericality: true
	validates :name, length: { minimum: 3, message: " - Please enter minimum 3 chars for book name"}
	
	before_save :merge_book_name
	after_destroy :merge_book_name
	
	def merge_book_name
		self.name = self.name + "by" + self.author
	end
	
	def display_message
		logger.error "A book has been deleted.."
	end
end
