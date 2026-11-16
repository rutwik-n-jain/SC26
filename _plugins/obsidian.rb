# Converts Obsidian syntax (image embeds, wikilinks) to standard HTML/Markdown.
Jekyll::Hooks.register [:pages, :documents], :pre_render do |doc|
  next unless doc.extname == ".md"
  base = doc.site.config["baseurl"].to_s
  content = doc.content.gsub(/!\[\[([^\]|]+?)(?:\|(\d+))?\]\]/) do
    name = Regexp.last_match(1).strip
    width = Regexp.last_match(2)
    w = width ? %( width="#{width}") : ""
    %(<img src="#{base}/attachments/#{name.gsub(' ', '%20')}"#{w} alt="#{name}">)
  end
  content = content.gsub(/(?<!!)\[\[([^\]|]+?)(?:\|([^\]]+))?\]\]/) do
    target = Regexp.last_match(1).strip
    label = (Regexp.last_match(2) || target).strip
    "[#{label}](#{base}/#{target.gsub(' ', '%20')}.html)"
  end
  doc.content = content
end
