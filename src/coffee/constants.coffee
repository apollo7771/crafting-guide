###
Crafting Guide - constants.coffee

Copyright (c) 2014-2015 by Redwood Labs
All rights reserved.
###

exports.Adsense  = Adsense = {}
Adsense.clientId = 'ca-pub-6593013914878730'
Adsense.slotId   = '7613920409'

# Minecraft must be first
exports.DefaultMods =
    minecraft:             { defaultVersion: '1.7.10' }
    applied_energistics_2: { defaultVersion: 'rv1-stable-1' }
    big_reactors:          { defaultVersion: '0.4.2A2' }
    buildcraft:            { defaultVersion: '6.2.6' }
    enderio:               { defaultVersion: '2.2.7.325' }
    forestry:              { defaultVersion: '3.4.0.7' }
    ic2_classic:           { defaultVersion: 'none' }
    industrial_craft_2:    { defaultVersion: '2.2.663' }
    iron_chests:           { defaultVersion: '6.0.62.742' }
    jabba:                 { defaultVersion: '1.2.1a' }
    mekanism:              { defaultVersion: '7.1.1.127' }
    railcraft:             { defaultVersion: '9.5.0' }
    thermal_dynamics:      { defaultVersion: '1.0.0RC7-98' }
    thermal_expansion:     { defaultVersion: '4.0.0B8-23' }

exports.Duration = Duration = {}
Duration.snap    = 100
Duration.fast    = 200
Duration.normal  = 400
Duration.slow    = 1200

exports.Event        = Event = {}
Event.add            = 'add'            # collection, item...
Event.change         = 'change'         # model
Event.load           = {}
Event.load.started   = 'load:started'   # controller, url
Event.load.succeeded = 'load:succeeded' # controller, book
Event.load.failed    = 'load:failed'    # controller, error message
Event.load.finished  = 'load:finished'  # controller
Event.remove         = 'remove'         # collection, item...
Event.request        = 'request'        # model
Event.route          = 'route'
Event.sort           = 'sort'
Event.sync           = 'sync'           # model, response
Event.transitionEnd  = (->
    return unless document?
    transitions =
      'transition':       'transitionend',
      'OTransition':      'oTransitionEnd',
      'MSTransition':     'msTransitionEnd',
      'MozTransition':    'transitionend',
      'WebkitTransition': 'webkitTransitionEnd'

    el = document.createElement 'fakeelement'
    for styleName, eventName of transitions
        return eventName if el.style[styleName]?
)()

exports.Key = Key = {}
Key.Return = 13

exports.Opacity = Opacity = {}
Opacity.hidden  = 1e-6
Opacity.shown   = 1

exports.ProductionEnvs = [ 'staging', 'production' ]

exports.RequiredMods = [ 'minecraft' ]

exports.ModelState  = ModelState = {}
ModelState.unloaded = 'unloaded'
ModelState.loading  = 'loading'
ModelState.loaded   = 'loaded'
ModelState.failed   = 'failed'

exports.Text = Text = {}
Text.title = 'The Ultimate Minecraft Crafting Guide'

exports.Url        = Url = {}
Url.crafting       = _.template "/craft/<%= inventoryText %>"
Url.item           = _.template "/browse/<%= modSlug %>/<%= itemSlug %>/"
Url.itemData       = _.template "/browse/<%= modSlug %>/<%= itemSlug %>/item.cg"
Url.itemIcon       = _.template "/browse/<%= modSlug %>/<%= itemSlug %>/icon.png"
Url.mod            = _.template "/browse/<%= modSlug %>/"
Url.modData        = _.template "/data/<%= modSlug %>/mod.cg"
Url.modIcon        = _.template "/browse/<%= modSlug %>/icon.png"
Url.modVersionData = _.template "/data/<%= modSlug %>/<%= modVersion %>/mod-version.cg"
Url.tutorial       = _.template "/browse/<%= modSlug %>/tutorials/<%= tutorialSlug %>/"
Url.tutorialData   = _.template "/data/<%= modSlug %>/tutorials/<%= tutorialSlug %>.cg"
Url.tutorialIcon   = _.template "/browse/<%= modSlug %>/tutorials/<%= tutorialSlug %>/icon.png"

exports.UrlParam        = UrlParam = {}
UrlParam.quantity       = 'count'
UrlParam.recipe         = 'recipeName'
UrlParam.includingTools = 'tools'
