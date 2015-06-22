@People = new Meteor.Collection('people')

if Meteor.isClient
	Template.body.events
		'click .btn': (e, template) ->
			email = $(':email').val()
			day = e.target.id
			People.insert email: email, day: day

if Meteor.isServer
	People.remove({})