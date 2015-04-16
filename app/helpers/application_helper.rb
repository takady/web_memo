require 'redcarpet'

module ApplicationHelper

  def md2html(md)
    unless @markdown
      render = Redcarpet::Render::HTML.new(filter_html: true)
      @markdown = Redcarpet::Markdown.new(render)
    end

    @markdown.render(md).html_safe
  end

end
