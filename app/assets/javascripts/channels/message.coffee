jQuery(document).on 'turbolinks:load', ->
  messages = $('#messages')
  messages_to_bottom = -> messages.scrollTop(messages.prop("scrollHeight"))
  messages_to_bottom()
  App.message = App.cable.subscriptions.create {
      channel: "MessageChannel",
      message_group_id: messages.data('message-group-id')
    },
	  connected: ->
	    # Called when the subscription is ready for use on the server

	  disconnected: ->
	    # Called when the subscription has been terminated by the server

	  received: (data) ->
  	  # Called when there's incoming data on the websocket for this channel
#      console.log data
#      name = $('<span></span>').addClass('message-data-name').text data.name
#      messageData = $('<div></div>').addClass("message-data")
#      messageData.append(name)
#      message = $('<div></div>').addClass('message my-message').text data.content
#      li = $("<li></li>").addClass('li').append(messageData).append(message)
#      $('#message-history > ul').prepend(li)
      messages.find('ul').append data['message']
      messages_to_bottom()

	  send_message: (message, message_group_id) ->
	  	@perform 'send_message', {content: message, message_group_id: message_group_id }

  $('#new_message').on 'submit', (e)->
    body = $(@).find('#message_content')
    if $.trim(body.val()).length > 1
      App.message.send_message body.val(), messages.data('message-group-id')
      body.val('')
    e.preventDefault()
    return false
