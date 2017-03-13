$('.modal').modal(
  complete: () ->
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
  
