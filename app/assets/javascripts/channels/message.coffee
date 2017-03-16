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
	    $('#chat-table').prepend("<tr><th>#{data.name}</th><td>#{data.content}</td></tr>")

	  send_message: (message, message_group_id) ->
	  	@perform 'send_message', {message: message, message_group_id: message_group_id }

	$('#send-btn').on 'click', ->
    message_box = $('#message-box')
#    if ($.trim(message_box.val()).length > 1)
#		  App.message.send_message message_box.val(), messages.data('message-group-id')
#      message_box.val('')
#      return false
