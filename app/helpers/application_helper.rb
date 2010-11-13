module ApplicationHelper
  def page_title
    if @title.blank?
      @title = "Cite.me"
    end
    @title    
  end
end
