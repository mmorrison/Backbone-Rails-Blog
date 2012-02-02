window.BackboneRailsBlog =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new BackboneRailsBlog.Routers.Posts
    Backbone.history.start()
    

$(document).ready ->
  BackboneRailsBlog.init()
