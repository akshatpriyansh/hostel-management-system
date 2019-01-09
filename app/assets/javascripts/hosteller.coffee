# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#search-btn').click ->
    search_query = $('#users').val()

    options =
      method: 'GET'
      url: '/hosteller/get_all_hostellers'
      dataType: 'html'
      data:
        hosteller_name: search_query

    resultXHR = $.ajax options

    resultXHR.success (data) ->
      console.log('successful')
      $('#hosteller-data').html data

