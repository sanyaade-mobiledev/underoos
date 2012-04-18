class Underoos::AssetsGenerator < Rails::Generators::Base

  source_root File.expand_path("../../../../", __FILE__)

  def copy_underoos_js_assets
    copy_file 'app/assets/javascripts/underoos.js', 'app/assets/javascripts/underoos.js'
  end

  def copy_vendored_js_assets
    copy_file 'vendor/assets/javascripts/bootstrap-alert.js'
    copy_file 'vendor/assets/javascripts/bootstrap-button.js'
    copy_file 'vendor/assets/javascripts/bootstrap-collapse.js'
    copy_file 'vendor/assets/javascripts/bootstrap-dropdown.js'
    copy_file 'vendor/assets/javascripts/bootstrap-modal.js'
    copy_file 'vendor/assets/javascripts/bootstrap-popover.js'
    copy_file 'vendor/assets/javascripts/bootstrap-scrollspy.js'
    copy_file 'vendor/assets/javascripts/bootstrap-tab.js'
    copy_file 'vendor/assets/javascripts/bootstrap-tooltip.js'
    copy_file 'vendor/assets/javascripts/bootstrap-transition.js'
    copy_file 'vendor/assets/javascripts/bootstrap-typeahead.js'
  end

  def copy_undeross_stylesheets
    copy_file 'app/assets/stylesheets/underoos.sass'
    directory 'app/assets/stylesheets/base'
    directory 'app/assets/stylesheets/components'
    directory 'app/assets/stylesheets/layouts'
    directory 'app/assets/stylesheets/mixins'
    directory 'app/assets/stylesheets/polyfills'
    directory 'app/assets/stylesheets/themes'
  end

end
