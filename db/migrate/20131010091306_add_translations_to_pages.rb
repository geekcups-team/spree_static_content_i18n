class AddTranslationsToPages < ActiveRecord::Migration
  def self.up
    params = [:title => :string, :body => :string, :slug => :string, 
      :foreign_link => :string, :meta_title => :string, :meta_keywords => :string, :meta_description => :string]
      Spree::Page.create_translation_table!(params, {
        :migrate_data => true
      })
    end

    def self.down
      Spree::Page.drop_translation_table! :migrate_data => true
    end
end
