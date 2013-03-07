$ ->
  $('.dialog-content').each ->
    $(@).dialog({
      autoOpen: false
      modal: true
      resizable: false
      width: $(@).data('width')
      position: [ 'center', 'center' ]
    })

  $(document).on 'click', '.small-thumb', ->
    $(".dialog-content[data-name='#{$(@).data('dialog')}']").dialog 'open'
    false

  $(document).on 'click', '#js-close-modal', ->
    $('.dialog-content').dialog 'close'
    false