class BackboneRailsBlog.Views.PostsIndex extends Backbone.View

  el: '#app'

  template: JST['posts/index']

  initialize: ->
    @collection.bind 'reset', @render, @

  render: ->
    $(@el).html(@template())
    @collection.each (post) =>
      view = new BackboneRailsBlog.Views.PostsItem model: post
      @$('#posts').append(view.render().el)
    @