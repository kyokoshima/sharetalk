jQuery(document).on 'turbolinks:load', ->
  messages = $('#messages')
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
	    name = $('<span></span>').addClass('message-data-name').text data.name
	    messageData = $('<div></div>').addClass("message-data")
	    messageData.append(name)
	    message = $('<div></div>').addClass('message my-message').text data.content
	    li = $("<li></li>").addClass('li').append(messageData).append(message)
	    $('#message-history > ul').prepend(li)

	  send_message: (message, message_group_id) ->
	  	@perform 'send_message', {message: message, message_group_id: message_group_id }

	$('#send-btn').on 'click', ->
    message_box = $('#message-box')
#    if ($.trim(message_box.val()).length > 1)
#		  App.message.send_message message_box.val(), messages.data('message-group-id')
#      message_box.val('')
#      return false
		App.message.new_message $('#message-to-send').val()
