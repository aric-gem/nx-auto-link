require "nokogiri"

module Nx
  class AutoLink
    def self.start(html, tags)
      parsed_data = Nokogiri::HTML.parse(html)
      paragraphs = parsed_data.css("p")

      # tags = [
      #   { name: "下载", url: "http://www.baidu.com/tag/2.html" },
      #   { name: "建议", url: "http://www.baidu.com/tag/1.html" },
      #   { name: "python", url: "http://www.baidu.com/tag/5.html" },
      # ]

      paragraphs.each do |item|
        processed_html = item.inner_html
        tags.reject { |tag| tag[:processed] }.each do |tag|
          tag_name = tag[:name]
          tag_url = tag[:url]
          if item.inner_html.include?(tag_name)
            tag[:processed] = true
            tag_str = "<a role=\"tag\" title=\"#{tag_name}\" href=\"#{tag_url}\">#{tag_name}</a>"
            unless processed_html.include?(tag_str)
              processed_html = processed_html.sub(tag_name, tag_str)
            end
          end
        end
        item.inner_html = processed_html
      end

      parsed_data.at_css("body").inner_html
    end
  end
end
