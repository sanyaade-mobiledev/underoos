
class Styleguide
  constructor: ->
    @superfriends = [
       'Aquaman' ,'Batman' ,'Catwomen' ,'Daredevil' ,'Elektra' ,'Fantastic Four'
      ,'Green Lantern' ,'Hulk' ,'Iron Man' ,'Jericho' ,'Karate Kid' ,'Lobo'
      ,'Mr. Terrific' ,'Nightwing' ,'Obsidian' ,'Plastic Man' ,'Quicksilver'
      ,'Robin' ,'Superman' ,'Teenage Mutant Ninja Turtles' ,'Ultraman'
      ,'Vigilante' ,'Wolverine' ,'X-Men' ,'Yellow Jacket' ,'Zattana'
    ]
    @initialize()

  initialize: ->
    @addListeners()
    @prettyCodeBlocks()
    @showcaseTips()
    @showcaseSuperfriends()

  addListeners: ->
    $('.progress').on 'click', @showcaseProgressBars
    $('#underoos_nav_demo').on 'click', @showcaseNavDemo
    $('#underoos_table_demo a').on 'click', @showcaseTableDemo
    $('#underoos_form_demo_type a').on 'click', @showcaseFormDemo
    $('#underoos_upgrade_demo').on 'click', @showcaseUpgrades

  # Underoos Specific
  prettyCodeBlocks: ->
    $('.sherpa-description > pre').addClass('prettyprint')
    window.prettyPrint()

  showcaseTips: ->
    $("a[rel=tooltip]").tooltip()
    $("a[rel=popover]").popover()

  showcaseNavDemo: (e) =>
    e.preventDefault()
    target = $(e.target)
    classes = target.data('classes')
    nav = target.parents('.nav').first()
    li = target.parent('li')
    nav.find('li').removeClass('active')
    nav.removeClass().addClass(classes)
    li.addClass('active')

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

  showcaseFormDemo: (e) =>
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

  setFormStates: (form, state) ->
    form.find('li').addClass(state)
    form.find('.uneditable').addClass(state)

  resetFormStates: (form) ->
    form.find('li').removeClass('disabled error warning success')
    form.find('.uneditable').removeClass('disabled error warning success')
    form.find('input').removeAttr('disabled')
    form.find('select').removeAttr('disabled')
    form.find('textarea').removeAttr('disabled')

  resetFormWells: (form) ->
    form.removeClass('well dark lite primary')

  showcaseSuperfriends: ->
    $('#underoos_superfriends').typeahead({source:@superfriends , items:10})

  showcaseUpgrades: (e) =>
    e.preventDefault()
    $('html').toggleClass('no-js lt-ie8')
    window.scrollTo(0,0)


# Get this party started
new Styleguide()

