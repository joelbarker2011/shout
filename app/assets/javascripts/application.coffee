# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file. JavaScript code in this file should be added after the last require_* statement.
#
# Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require_tree .
#= require jquery
#= require bootstrap-sprockets

$(document).on 'turbolinks:load', ->
  geoInputs = $('input[data-geolocation]')
  if geoInputs.length && ! geoInputs.val()
    navigator.geolocation.getCurrentPosition(
      (pos) ->
        console.log pos
        $('input[data-geolocation="latitude"]').val pos.coords.latitude
        $('input[data-geolocation="longitude"]').val pos.coords.longitude
        $('input[data-geolocation="accuracy"]').val pos.coords.accuracy
      , (err) ->
        console.log err
        #window.alert('Unable to get current position: ' + err)
      , 
        enableHighAccuracy: true
        timeout: 10 * 1000          # 10 seconds
        maximumAge: 10 * 60 * 1000  # 10 minutes
    )

$(document).on 'turbolinks:load', ->
  $('table[data-layout="datatables"]').DataTable()

