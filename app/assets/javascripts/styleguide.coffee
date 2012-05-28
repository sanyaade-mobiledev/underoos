
class Styleguide
  constructor: ->
    @initialize()

  initialize: ->
    @domLookup()
    @addListeners()
    @prettyCodeBlocks()
    @showcaseTips()

  domLookup: ->
    @progress_bars = $('.progress')
    @table_demo = $('#underoos_table_demo a')

  addListeners: ->
    @progress_bars.on 'click', @showcaseProgressBars
    @table_demo.on 'click', @showcaseTableDemo

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


# Get this party started
new Styleguide()

