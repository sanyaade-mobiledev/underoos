
!function ($) {

  $(function() {
    // enable nice looking pre tags
    window.prettyPrint && prettyPrint()

    // instantiate any tooltips and popovers
    $("a[rel=tooltip]").tooltip()
    $("a[rel=popover]").popover()

    // Disable anchor links within the docs section
    $('.sg-section [href^=#]').click(function (e) {
      e.preventDefault()
    })
  })

}(window.jQuery)

