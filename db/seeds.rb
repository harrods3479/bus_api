# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create({title: 'event1 title', body: 'this is the body of event1'})
Event.create({title: 'event2 title', body: 'this is the body of event2'})

Comment.create({body: 'comment1 body of Event1', event_id: 1})
Comment.create({body: 'comment2 body of Event1', event_id: 1})
Comment.create({body: 'comment3 body of Event2', event_id: 2})
Comment.create({body: 'comment4 body of Event2', event_id: 2})

Terminal.create({name: 'rasp-one', notes: '１号機'})

Counter.create({terminal_id: 1, datetime: Time.now, timezone:'', latitude: '35.9059033333', longitude: '138.232736667', no_react: 0, boarding: '3', alighted: '2', unknown: '1'})
