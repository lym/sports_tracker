module ApplicationHelper
  def cp(path)
    #"current_page" if current_page?(path)
    if current_page?(path)
      "current-page"
    else
      nil
    end
  end
end
