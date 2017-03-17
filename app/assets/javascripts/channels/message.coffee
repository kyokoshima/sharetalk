$ ->
	App.message = App.cable.subscriptions.create "MessageChannel",
	  connected: ->
	    # Called when the subscription is ready for use on the server

	  disconnected: ->
	    # Called when the subscription has been terminated by the server

	  received: (data) ->
	    # Called when there's incoming data on the websocket for this channel
	    icon = $('<i></i>').addClass('material-icons me').text 'fiber_manual_record'
	    name = $('<span></span>').addClass('message-data-name').text data.name
	    messageData = $('<div></div>').addClass("message-data align-right")
	    messageData.append(name).append(icon)
	    message = $('<div></div>').addClass('my-message message float-right').text data.content
	    li = $("<li></li>").addClass('clearfix').append(messageData).append(message)
	    $('#message-history > ul').prepend(li)

	  new_message: (message) ->
	  	@perform 'create_message', {message: message}

	$('#send-btn').on 'click', ->
		App.message.new_message $('#message-to-send').val()