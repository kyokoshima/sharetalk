$('.modal').modal(
  complete: () ->
    console.log @
    $('#candidate-modal').find('.section').empty()
    )

$('#candidate-modal').on 'click', '.collection-item' , (e) ->
  img = $(@).children('img').clone()
  close_button = $('<i></i>').addClass('close material-icons').text('close')
  chip = $('<div></div>')
    .addClass('chip')
    .data('user-id', $(@).data('user-id'))
    .append(img).append($(@).children('p').text()).append(close_button)
  console.log chip
  $(@).parents().find('.section').append(chip)
.on 'click', '.ok', ->
  console.log @
  chips = $(@).parents().find('.section > .chip')
  chips.each (i, e) ->
    new_id = new Date().getTime()
    hidden = $('<input type="hidden">')
      .attr {'name': "message_group[message_group_users_attributes][#{new_id}][user_id]"}
      .val $(e).data('user-id')
    chip = $(e).clone()
    $('#new_message_group #users').append(chip).append(hidden)

  $('.modal').modal('close')

