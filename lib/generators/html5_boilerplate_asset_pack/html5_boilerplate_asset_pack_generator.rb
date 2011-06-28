class Html5BoilerplateAssetPackGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  def manifest
    copy_application_layout
    install_javascript_safe_logger
    update_application_js
    update_application_css
    copy_google_analytics_initializer
    copy_shared_partial_google_analytics
    copy_shared_partial_dd_belatedpng
  end
  
  private 
  
  def copy_application_layout
    copy_file 'application.html.erb', 'app/views/layouts/application.html.erb'
  end
  
  def install_javascript_safe_logger
    generate 'javascript_safe_logger'
  end
  
  def update_application_js
    app_js = 'app/assets/javascripts/application.js'
    gsub_file app_js, /\/\/= require jquery_ujs/, '\/\/ *cdn* require jquery_ujs'        
    gsub_file app_js, /\/\/= require jquery/, '\/\/ *cdn* require jquery'
  end
  
  def update_application_css
    inject_into_file "app/assets/stylesheets/application.css", " *= require html5_boilerplate\n", :after => " *= require_self\n"    
  end
  
  def copy_google_analytics_initializer
    copy_file 'google_analytics.rb', 'config/initializers/google_analytics.rb' 
    say " => update this file with your Google Analytics site id"   
  end
  
  def copy_shared_partial_google_analytics
    copy_file '_google_analytics.html.erb', 'app/views/shared/_google_analytics.html.erb'    
  end
  
  def copy_shared_partial_dd_belatedpng
    copy_file '_dd_belatedpng.html.erb', 'app/views/shared/_dd_belatedpng.html.erb'        
  end
end
