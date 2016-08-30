module ApplicationHelper
  def nl2br(s=yield)
    sanitize(s, tags: []).gsub(/\n/, '<br>').html_safe
  end

end
