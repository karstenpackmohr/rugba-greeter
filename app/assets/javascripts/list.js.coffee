$ ->
  $('.create_person').on('click', ->
    form = $('#new_person')
    form.find('#person_name').val($(this).text())
    form.submit()
  )
