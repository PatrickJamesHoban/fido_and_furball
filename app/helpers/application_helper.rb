module ApplicationHelper

  # Returns the full title depending on what is available.
  def full_title(custom_title = '', page_title = '')
    base_title = "Ellie Farmgirl"
    if custom_title.empty?
      page_title + ' | ' + base_title
    else
      custom_title
    end
  end

end
