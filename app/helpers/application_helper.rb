module ApplicationHelper
	def full_title(page_title='')
		if page_title.empty?
			puts "application_helper's full_title is wrong"
		else
			"#{page_title}"
		end
	end
end
