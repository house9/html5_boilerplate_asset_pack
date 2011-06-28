class Html5BoilerplateAssetPackGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  def manifest
    copy_application_layout
    install_javascript_safe_logger
    update_application_js
    update_application_css
  end
  
  private 
  
  def copy_application_layout
    # TODO
  end
  
  def install_javascript_safe_logger
    # TODO
  end
  
  def update_application_js
    # TODO
  end
  
  def update_application_css
    # TODO
  end
end
