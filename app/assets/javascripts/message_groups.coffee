$('.modal').modal(
  complete: () ->
    console.log @
    $('#candidate-modal').find('.section').empty()
    )

$('#candidate-modal').on 'click', '.collection-item' , (e) ->
  img = $(@).children('img').clone()
  close_button = $('<i></i>').addClass('close material-icons').text('close')
  user_name = $('<span></span>').text($(@).children('p').text())
  chip = $('<div></div>')
    .addClass('chip')
    .data('user-id', $(@).data('user-id'))
    .append(img).append(user_name).append(close_button)
    .on 'click', '.close', ->
      user_id = $(@).parent().data('user-id')
      $(".collection-item[data-user-id=#{user_id}]").show()

  console.log chip
  $(@).parents().find('.section').append(chip)
  $(@).hide()
.on 'click', '.ok', ->
  console.log @
  chips = $(@).parents().find('.section > .chip')
  group_title = []
  attribute_name = $(@).data("attribute-name")
  chips.each (i, e) ->
    new_id = new Date().getTime()
    hidden = $('<input type="hidden">')
      .attr {'name': attribute_name}
      .val $(e).data('user-id')
    chip = $(e).clone()
    $('#users').prepend(chip).append(hidden)
    group_title.push  chip.find('span').text()

  $('#message_group_title').val(group_title)
  $('.modal').modal('close')

