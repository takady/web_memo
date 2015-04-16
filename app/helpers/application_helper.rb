require 'redcarpet'

module ApplicationHelper

  def md2html(md)
    unless @markdown
      @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new)
    end

    @markdown.render(md).html_safe
  end

end
