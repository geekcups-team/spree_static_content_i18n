module Spree
  Page.class_eval do
    translates :title, :body, :slug, :foreign_link, :meta_title, :meta_keywords, :meta_description,
          :fallbacks_for_empty_translations => true
    include SpreeI18n::Translatable
  end
end