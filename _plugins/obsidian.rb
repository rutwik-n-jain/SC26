# Converts Obsidian syntax (image embeds, wikilinks) to standard HTML/Markdown.
Jekyll::Hooks.register [:pages, :documents], :pre_render do |doc|
  next unless doc.extname == ".md"
  base = doc.site.config["baseurl"].to_s
  doc.content = doc.content
    .gsub(/!\[\[([^\]|]+?)(?:\|(\d+))?\]\]/) do
      src = "#{base}/attachments/#{$1.strip.gsub(' ', '%20')}"
      w = $2 ? %( width="#{$2}") : ""
      %(<img src="#{src}"#{w} alt="#{$1.strip}">)
    end
    .gsub(/(?<!!)\[\[([^\]|]+?)(?:\|([^\]]+))?\]\]/) do
      "[#{($2 || $1).strip}](#{base}/#{$1.strip.gsub(' ', '%20')}.html)"
    end
end
