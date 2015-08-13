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
end

include PostHelper
