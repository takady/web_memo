require 'github/markdown'

module ApplicationHelper

  def md2html(md)
    GitHub::Markdown.render_gfm(md).html_safe
  end

end
