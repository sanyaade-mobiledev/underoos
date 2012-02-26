
// This is some dirty link disabling and showcasing behavior
!function ($) {

  $(function() {
    var showcase = $('#navs_showcase')
    var nav_lists = $('li', showcase)
    var nav_links = $('li > a', showcase)

    // enable nice looking pre tags
    window.prettyPrint && prettyPrint()

    // instantiate any tooltips and popovers
    $("a[rel=tooltip]").tooltip()
    $("a[rel=popover]").popover()

    // Disable anchor links within the docs section
    $('.sg-section [href^=#]').click(function (e) {
      e.preventDefault()
    })

    // Showcase various classes of nav items
    nav_links.on('click', function(e) {
      e.preventDefault()
      var li = $(this).parent('li')
      var classes = $(this).data('classes')
      nav_lists.removeClass('active')
      $(li).addClass('active')
      showcase.removeClass().addClass(classes)
    })

    // Fake loading data to showcase a stateful button
    $('#loader_btn').on('click', function(e) {
      var btn = $(this)
      btn.button('loading')
      setTimeout(function() {
       btn.button('complete')
      }, 3000)
    })

    // Click progress bars to showcase states
    $('.progress').on('click', function(e) {
      var bar = $(this).find('> .bar')
      var pwidth = $(this).width()

      if (bar.width() === pwidth) {
        bar.css({width:'0%'})
      } else {
        bar.css({width:'100%'})
      }
    })

    // Simple test for calculating the page size
    /* var sizing = $('#page_title')
    window.onresize = function() {
      sizing[0].innerHTML = window.innerWidth + 'px'
    } */

  })

}(window.jQuery)

