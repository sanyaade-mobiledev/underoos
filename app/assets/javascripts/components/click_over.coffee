
# @el = $('body')
# @el.append(JST['views/test'](content: "hi there"))

window.underoos ?= {}
underoos.support ?= {}
underoos.components ?= {}

class underoos.components.ClickOver
  constructor: (options) ->
    @initialize(options)
    @bindClick()

  initialize: (options)->
    if options.element
      @el = $(options.element)
    else
      @container = options.container
      @render(options.type, options.message, options.sticky)

  bindClick: ->
    @el.bind('click', => @hide())

  show: ->
    # _.defer =>
      # @el.addClass('show')

  hide: ->
    # @el.unbind('click')
    # @el.removeClass('show')
    # if smd.support.hasTransition
      # @el.bind(smd.support.transitionEnd, @dispose)
    # else @dispose()

  render: (type, message, sticky = false) ->
    sticky = if sticky then 'sticky' else ''
    @el = $(JST['templates/flash_message'](flag: type, message: message, sticky: sticky))
    @container.append(@el)
    @growl() unless sticky

  dispose: =>
    @el.remove()

