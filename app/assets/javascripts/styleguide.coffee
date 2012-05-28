
class Styleguide
  constructor: ->
    @initialize()

  initialize: ->
    @addListeners()
    @prettyCodeBlocks()
    @showcaseTips()

  addListeners: ->
    $('.progress').on 'click', @showcaseProgressBars
    $('#underoos_table_demo a').on 'click', @showcaseTableDemo
    $('#underoos_upgrade_demo').on 'click', @showcaseUpgrades

  # Underoos Specific
  prettyCodeBlocks: ->
    $('.sherpa-description > pre').addClass('prettyprint')
    window.prettyPrint()

  showcaseTips: ->
    $("a[rel=tooltip]").tooltip()
    $("a[rel=popover]").popover()

  showcaseProgressBars: ->
    target = $(@)
    bar = target.find('> .bar')
    pb_width = target.width()

    if bar.width() is pb_width
      bar.css(width: '0%')
    else
      bar.css(width:'100%')

  showcaseTableDemo: (e) =>
    target = $(e.target)
    style = target.data('table')
    table = target.parents('.sherpa-showcase').first().find('table')
    table.toggleClass(style)

  showcaseUpgrades: (e) =>
    e.preventDefault()
    $('html').toggleClass('no-js lt-ie8')
    window.scrollTo(0,0)


# Get this party started
new Styleguide()

