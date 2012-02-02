class BackboneRailsBlog.Routers.Posts extends Backbone.Router

  routes:
    '' : 'index'
    'posts/new' : 'new'
    'posts/:id' : 'show'

  index: ->
     posts = new BackboneRailsBlog.Collections.Posts
     new BackboneRailsBlog.Views.PostsIndex collection: posts
     posts.fetch()

  new: ->
    post = new BackboneRailsBlog.Models.Post
    posts = new BackboneRailsBlog.Collections.Posts
    posts.bind 'add', =>
      triggerRouter = true
      @navigate '', triggerRouter
    view = new BackboneRailsBlog.Views.PostsNew
      collection: posts
      model: post
    view.render()
    
  show: (id) ->
      post = new BackboneRailsBlog.Models.Post id: id
      view = new BackboneRailsBlog.Views.PostsShow model: post
      collection = new BackboneRailsBlog.Collections.Posts [post]
      post.fetch()