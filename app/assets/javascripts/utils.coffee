@selectpicker = ->
  $('select, .selectpicker').each ->
    label = $(this).parent().find('label').clone().find('abbr').remove().end().text()
    $(this).data('live-search', true).selectpicker({hideDisabled: true, noneSelectedText: label})