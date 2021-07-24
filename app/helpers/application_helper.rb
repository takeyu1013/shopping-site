module ApplicationHelper

  # Return a full title by page.
  def full_title(page_title = '')
    base_title = "ショッピングサイト"
    if page_title.empty?
      base_title
    else
      page_title
    end
  end
end
