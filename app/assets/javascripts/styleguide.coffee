
# Demos various aspects of the styleguide in a very dirty way.
class Styleguide
  constructor: ->
    @initialize()

  initialize: ->
    @addListeners()
    @prettyCodeBlocks()
    @demoTips()
    @demoTypeahead()

  addListeners: ->
    $('#underoos_nav_demo').on 'click', @demoNav
    $('#underoos_buttons_demo').on 'click', @demoButtons
    $('.btn[data-complete-text]').on 'click', @demoSending
    $('#underoos_table_demo a').on 'click', @demoTable
    $('#underoos_form_demo_type a').on 'click', @demoForm
    $('#underoos_upgrade_demo').on 'click', @demoUpgrades
    $('.upgrade-close').on 'click', @closeUpgrades
    $('.progress').on 'click', @demoProgressBars

  # Turn code blocks into pretty colors
  prettyCodeBlocks: ->
    $('.sherpa-description > pre').addClass('prettyprint')
    window.prettyPrint()

  # Demos structures built off the base `.nav` class
  demoNav: (e) =>
    e.preventDefault()
    target = $(e.target)
    classes = target.data('classes')
    nav = target.parents('.nav').first()
    li = target.parent('li')
    nav.removeClass().addClass(classes)
    nav.find('li').removeClass('active')
    li.addClass('active')

  # Demos various states on `.btn` elements within a table
  demoButtons: (e) =>
    e.preventDefault()
    target = $(e.target)
    classes = target.data('class')
    buttons = target.parents('.sherpa-section').first().find('#base-buttons > table button')
    if classes is "normal"
      buttons.removeClass('active error disabled small large')
    else
      buttons.removeClass('active error disabled small large')
      buttons.addClass(classes)

  # Demos a stateful button
  demoSending: (e) =>
    e.preventDefault()
    target = $(e.target)
    target.button('loading')
    setTimeout((->
      target.button('complete')
    ), 3000)

  # Demos additive classes around table styles
  demoTable: (e) =>
    e.preventDefault()
    target = $(e.target)
    style = target.data('table')
    table = target.parents('.sherpa-showcase').first().find('table')
    table.toggleClass(style)

  # Demos structures, states and well coloring related to forms
  demoForm: (e) =>
    e.preventDefault()
    target = $(e.target)
    form = target.parents('.sherpa-showcase').first().find('form')
    style = target.data('form-type')

    # Structures
    if style is 'form-vertical'
      form.removeClass('form-horizontal')
    else if style is 'form-horizontal'
      form.addClass('form-horizontal')

    # Wells
    else if style is 'regular'
      @resetFormWells(form)
      form.addClass('well')
    else if style is 'empty'
      @resetFormWells(form)
    else if style is 'dark' or style is 'lite' or style is 'primary'
      @resetFormWells(form)
      form.addClass("well #{style}")

    # States
    else if style is 'normal'
      @resetFormStates(form)
    else if style is 'disabled'
      @resetFormStates(form)
      @setFormStates(form, style)
      form.find('input').attr('disabled', 'disabled')
      form.find('select').attr('disabled', 'disabled')
      form.find('textarea').attr('disabled', 'disabled')
    else if style is 'error' or style is 'success' or style is 'warning'
      @resetFormStates(form)
      @setFormStates(form, style)

  # Resets form wells
  resetFormWells: (form) ->
    form.removeClass('well dark lite primary')

  # Sets a state (error, warning, success, disabled) for form elements
  setFormStates: (form, state) ->
    form.find('li').addClass(state)
    form.find('.uneditable').addClass(state)

  # Resets form states back to normal
  resetFormStates: (form) ->
    form.find('li').removeClass('disabled error warning success')
    form.find('.uneditable').removeClass('disabled error warning success')
    form.find('input').removeAttr('disabled')
    form.find('select').removeAttr('disabled')
    form.find('textarea').removeAttr('disabled')

  # Demos the typeahead plugin from an array
  demoTypeahead: ->
    superfriends = [
       'Aquaman' ,'Batman' ,'Catwomen' ,'Daredevil' ,'Elektra' ,'Fantastic Four'
      ,'Green Lantern' ,'Hulk' ,'Iron Man' ,'Jericho' ,'Karate Kid' ,'Lobo'
      ,'Mr. Terrific' ,'Nightwing' ,'Obsidian' ,'Plastic Man' ,'Quicksilver'
      ,'Robin' ,'Superman' ,'Teenage Mutant Ninja Turtles' ,'Ultraman'
      ,'Vigilante' ,'Wolverine' ,'X-Men' ,'Yellow Jacket' ,'Zattana'
    ]
    $('#underoos_typeahead').typeahead({source:superfriends , items:10})

  # Instantiates tooltips and popovers on the page
  demoTips: ->
    $("a[rel=tooltip]").tooltip()
    $("a[rel=popover]").popover()

  # Demos the animation on progress bars
  demoProgressBars: ->
    target = $(@)
    bar = target.find('> .bar')
    pb_width = target.width()
    if bar.width() is pb_width
      bar.css(width: '0%')
    else
      bar.css(width:'100%')

  # Demos the upgrade message
  demoUpgrades: (e) =>
    e.preventDefault()
    $('html').addClass('no-js lt-ie8')
    window.scrollTo(0,0)

  # Hop back down to upgrades after closing the window
  closeUpgrades: (e) =>
    e.preventDefault()
    $('html').removeClass('no-js lt-ie8')
    div = $('#layouts-upgrades')
    window.scroll(0,div.offset().top)

# Get this party started
new Styleguide()

