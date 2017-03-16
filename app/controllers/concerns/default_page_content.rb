module DefaultPageContent
    extend ActiveSupport::Concern
  
  included do
    before_filter :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = "Dean Bozic"
    @seo_keywords = "Dean Bozic Portfolio"
  end
end

 