jQuery(document).on 'turbolinks:load', ->
  buttonSelector = "[data-behavior~=appear_away]"
  App.appearance = App.cable.subscriptions.create "AppearanceChannel",
    connected: ->
      @install()
      @appear()

    disconnected: ->
      @uninstall()

    rejected: ->
      @uninstall()

    received: (data) ->
      user_id = data['id']
      indicator = $(".people-list [data-user-id=#{user_id}] .status i")
      indicator.removeClass('online offline')
      copy = indicator.clone()
      if data['on']
        copy.addClass('online')
        indicator.parent().text('online').append(copy)
      else
        copy.addClass('offline').parent().text('offline')
        indicator.parent().text('offline').append(copy)
      
      # Called when there's incoming data on the websocket for this channel
    
    appear: ->
      @perform("appear", appearing_on: true)

    away: ->
      @perform("away")

    install: ->
      $(document).on "page:change.appearance", =>
        @appear()

      $(document).on "click.appearance", buttonSelector, =>
        @away()
        false

      $(buttonSelector).show()

    uninstall: ->
      $(document).off(".appearance")
      $(buttonSelector).hide()
