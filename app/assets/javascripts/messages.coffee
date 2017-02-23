# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
App.message = App.cable.subscriptions.create "MessageChannel",
    connected: ->
     
    disconnected: ->

    recerived: (data) ->
      console.log data

    put_message: () ->
      @perform('put_message')
      return
