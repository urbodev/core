$ ->
  $(document).on 'page:change', (e) ->
    iconic = IconicJS()
    iconic.inject('.iconic')
  # jumbotronInview = new Waypoint.Inview
  #   element: $('.jumbotron')[0]
  #   enter: (direction) ->
  #   entered: (direction) ->
  #   exit: (direction) ->
  #   exited: (direction) ->