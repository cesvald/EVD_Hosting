class Lodging.Views.ParticipantsShow extends Backbone.View

	el: 'body'
		
	initialize: ->
		$('a[href="' +window.location.hash+ '"]').tab('show')
		$('#navigation a').click( ->
		  location.hash = $(this).attr('aria-controls')
		)
		
		$('.remote-change').click()
		adminEvd.setupDatePicker()
		