module ApplicationHelper
  def truncate_text(text, length)
    truncate(text, length: length)
  end
end
