require 'qiita/markdown'

module ApplicationHelper

  def md2html(md)
    unless @processor
      @processor = Qiita::Markdown::Processor.new
      @processor.filters << HTML::Pipeline::ImageMaxWidthFilter
    end
    result = @processor.call(md)
    result[:output].to_s.html_safe
  end
end
