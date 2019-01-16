# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  showSnackbar = ->
# Get the snackbar DIV
    x = document.getElementById('snackbar')
    # Add the "show" class to DIV
    x.className = 'show'
    # After 3 seconds, remove the show class from DIV
    setTimeout (->
      x.className = x.className.replace('show', '')
      return
    ), 3000
    return

  if location.href.indexOf('logged_in=true') > 0
    showSnackbar()



