@announce @announce-stderr
Feature: Generating the Underoos SASS files into an app

  Scenario: Copying the Sass files into a target app
    Given I successfully run `bundle exec rails new testapp --skip-bundle`
    And I cd to "testapp"
    And I add Underoos as a gem dependency
    And I run `bundle install --local`
    When I successfully run `bundle exec rails generate underoos:assets --trace`
    Then the following files should exist:
      | app/assets/javascripts/underoos.js                      |
      | app/assets/javascripts/docs.js                          |
      | app/assets/javascripts/styleguide.coffee                |
      | app/assets/stylesheets/underoos.sass                    |
      | app/assets/stylesheets/underoos-docs.sass               |
      | app/assets/stylesheets/base/_base.sass                  |
      | app/assets/stylesheets/base/_button-btn-mixin.sass      |
      | app/assets/stylesheets/base/_buttons.sass               |
      | app/assets/stylesheets/base/_forms.sass                 |
      | app/assets/stylesheets/base/_helpers.sass               |
      | app/assets/stylesheets/base/_normalize.sass             |
      | app/assets/stylesheets/base/_scaffold.sass              |
      | app/assets/stylesheets/base/_tables.sass                |
      | app/assets/stylesheets/base/_transitions.sass           |
      | app/assets/stylesheets/base/_typography.sass            |
      | app/assets/stylesheets/components/_accordions.sass      |
      | app/assets/stylesheets/components/_breadcrumbs.sass     |
      | app/assets/stylesheets/components/_button-groups.sass   |
      | app/assets/stylesheets/components/_carets.sass          |
      | app/assets/stylesheets/components/_carousels.sass       |
      | app/assets/stylesheets/components/_close.sass           |
      | app/assets/stylesheets/components/_components.sass      |
      | app/assets/stylesheets/components/_decals.sass          |
      | app/assets/stylesheets/components/_dropdowns.sass       |
      | app/assets/stylesheets/components/_media.sass           |
      | app/assets/stylesheets/components/_modals.sass          |
      | app/assets/stylesheets/components/_nav-lists.sass       |
      | app/assets/stylesheets/components/_navbars.sass         |
      | app/assets/stylesheets/components/_notifications.sass   |
      | app/assets/stylesheets/components/_paddles.sass         |
      | app/assets/stylesheets/components/_pagination.sass      |
      | app/assets/stylesheets/components/_pills.sass           |
      | app/assets/stylesheets/components/_popovers.sass        |
      | app/assets/stylesheets/components/_progress-bars.sass   |
      | app/assets/stylesheets/components/_tabs.sass            |
      | app/assets/stylesheets/components/_tooltips.sass        |
      | app/assets/stylesheets/components/_wells.sass           |
      | app/assets/stylesheets/layouts/_containers.sass         |
      | app/assets/stylesheets/layouts/_layouts.sass            |
      | app/assets/stylesheets/layouts/_print.sass              |
      | app/assets/stylesheets/layouts/_queries.sass            |
      | app/assets/stylesheets/layouts/_upgrades.sass           |
      | app/assets/stylesheets/mixins/_arrows.sass              |
      | app/assets/stylesheets/mixins/_clearfixins.sass         |
      | app/assets/stylesheets/mixins/_coloring.sass            |
      | app/assets/stylesheets/mixins/_columns.sass             |
      | app/assets/stylesheets/mixins/_conversions.sass         |
      | app/assets/stylesheets/mixins/_font-size.sass           |
      | app/assets/stylesheets/mixins/_image-tools.sass         |
      | app/assets/stylesheets/mixins/_inline-block.sass        |
      | app/assets/stylesheets/mixins/_ir.sass                  |
      | app/assets/stylesheets/mixins/_mixins.sass              |
      | app/assets/stylesheets/mixins/_responsive.sass          |
      | app/assets/stylesheets/mixins/_sticky-footer.sass       |
      | app/assets/stylesheets/mixins/_tab-focus.sass           |
      | app/assets/stylesheets/mixins/_timing-equations.sass    |
      | app/assets/stylesheets/mixins/_visibility.sass          |
      | app/assets/stylesheets/polyfills/_box-shadow.sass       |
      | app/assets/stylesheets/polyfills/_box-sizing.sass       |
      | app/assets/stylesheets/polyfills/_functions.sass        |
      | app/assets/stylesheets/polyfills/_opacity.sass          |
      | app/assets/stylesheets/polyfills/_polyfills.sass        |
      | app/assets/stylesheets/polyfills/_transition.sass       |
      | app/assets/stylesheets/polyfills/_user-select.sass      |
      | app/assets/stylesheets/settings/_config.sass            |
      | app/assets/stylesheets/settings/_settings.sass          |
      | app/assets/stylesheets/settings/_theme.sass             |
      | vendor/assets/javascripts/bootstrap-alert.js            |
      | vendor/assets/javascripts/bootstrap-button.js           |
      | vendor/assets/javascripts/bootstrap-collapse.js         |
      | vendor/assets/javascripts/bootstrap-dropdown.js         |
      | vendor/assets/javascripts/bootstrap-modal.js            |
      | vendor/assets/javascripts/bootstrap-popover.js          |
      | vendor/assets/javascripts/bootstrap-tab.js              |
      | vendor/assets/javascripts/bootstrap-tooltip.js          |
      | vendor/assets/javascripts/bootstrap-transition.js       |
      | vendor/assets/javascripts/bootstrap-typeahead.js        |
