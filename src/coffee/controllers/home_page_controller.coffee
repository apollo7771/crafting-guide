###
Crafting Guide - home_page_controller.coffee

Copyright (c) 2015 by Redwood Labs
All rights reserved.
###

AdsenseController = require './adsense_controller'
PageController    = require './page_controller'

########################################################################################################################

module.exports = class HomeController extends PageController

    constructor: (options={})->
        options.templateName = 'home_page'
        super options

    # BaseController Overrides #####################################################################

    onDidRender: ->
        @adsenseController = @addChild AdsenseController, '.view__adsense', model:'sidebar_skyscraper'
        super

    # Backbone.View Overrides ######################################################################

    events: ->
        return _.extend super,
            'click a': 'routeLinkClick'
