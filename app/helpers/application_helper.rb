module ApplicationHelper
    def full_title(page_title = '')
        base_title = "Postify: Expresa tu opinion al mundo"
        if page_title.empty?
            base_title
        else
            page_title + ' | ' + base_title
        end
    end
end
