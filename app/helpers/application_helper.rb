module ApplicationHelper
	def full_title(page_title = '')
		base_tiile = "Ruby on Rails Tutorial Sample App"
		if page_title.empty?
			base_tiile
		else
			page_title + "|" + base_tiile 
		end
	end
end
