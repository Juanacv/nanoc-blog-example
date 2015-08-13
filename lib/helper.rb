include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::LinkTo

module PostHelper
  def get_pretty_date(post)
    created = post[:created_at];
    if created.nil?
    	"hola"
    else
    	attribute_to_time(post[:created_at]).strftime('%B %-d, %Y')
    end
  end
  
  def get_post_start(post)
    content = post.compiled_content
    if content =~ /\s<!-- more -->\s/
      content = content.partition('<!-- more -->').first +
      "<div class='read-more'><a href='#{post.path}'>Continue reading &rsaquo;</a></div>"
    end
   return content
  end

end

include PostHelper
