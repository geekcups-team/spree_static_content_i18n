module Spree
  Page.class_eval do
    translates :title, :body, :slug, :foreign_link, :meta_title, :meta_keywords, :meta_description,
          :fallbacks_for_empty_translations => true
    include SpreeI18n::Translatable
    
    def self.by_slug(slug, locale = nil)
      locale = I18n.locale unless locale
        slug = ::StaticPage::remove_spree_mount_point(slug)
        page_translation = Spree::Page::Translation.find_by(slug: [slug,"/#{slug}"], locale: [locale,I18n.default_locale])
        
        page_translation ? self.where(id: page_translation.spree_page_id) : self.where(id:0)
    end
    
  end
end