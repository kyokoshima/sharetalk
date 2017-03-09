$ ->
	App.message = App.cable.subscriptions.create "MessageChannel",
	  connected: ->
	    # Called when the subscription is ready for use on the server

	  disconnected: ->
	    # Called when the subscription has been terminated by the server

	  received: (data) ->
	    # Called when there's incoming data on the websocket for this channel
	    $('#chat-table').prepend("<tr><th>#{data.name}</th><td>#{data.content}</td></tr>")

	  new_message: (message) ->
	  	@perform 'create_message', {message: message}

	$('#send-btn').on 'click', ->
		App.message.new_message $('#message-box').val()