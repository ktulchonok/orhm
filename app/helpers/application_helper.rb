module ApplicationHelper
  def nl2br(s=yield)
    sanitize(s, tags: []).gsub(/\n/, '<p>').html_safe
  end

  def process_string(s=yield)
    string = sanitize(s, tags: []).split(/\*\*\*/)
    string[0] ||= ''
    if string[1]
      string[0].gsub(/\n/, '<p>').html_safe + '***' + string[1].gsub(/\n/, '<li>').html_safe
    else
      string[0].gsub(/\n/, '<p>').html_safe
    end
  end

end
