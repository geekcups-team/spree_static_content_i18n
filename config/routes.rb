Spree::Core::Engine.routes.draw do
  # Add your extension routes here
end

# module Pippo
# class StaticPage
#   def self.matches?(request)
#     locale = if request.session.key?(:locale) && SpreeI18n::Config.supported_locales.include?(request.session[:locale].to_sym)
#       request.session[:locale]
#     else
#       Rails.application.config.i18n.default_locale || I18n.default_locale
#     end
#     slug = ::StaticPage::remove_spree_mount_point(request.fullpath)
#     #pages = Spree::Page.arel_table
#     Spree::Page.visible.by_slug(slug, locale).exists?
#   end
# end
# 
# class StaticRoot
#   def self.matches?(request)
#     locale = if request.session.key?(:locale) && SpreeI18n::Config.supported_locales.include?(request.session[:locale].to_sym)
#       request.session[:locale]
#     else
#       Rails.application.config.i18n.default_locale || I18n.default_locale
#     end
#     path = ::StaticPage::remove_spree_mount_point(request.fullpath)
#     path.nil? && Spree::Page.visible.by_slug(path.to_s, locale).first
#   end
# end
# end
# Spree::Core::Engine.routes.prepend do
# 
#   namespace :admin do
#     resources :pages
#   end
# 
#   constraints(Pippo::StaticRoot) do
#     get '/', :to => 'static_content#show'
#   end
# 
#   constraints(Pippo::StaticPage) do
#     get '/*path', :to => 'static_content#show'
#   end
# end