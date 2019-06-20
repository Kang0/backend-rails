# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user = User.create(username: "Flatiron", email: "example@test.com", password: "kevin")

@javascript = Challenge.create(name: "Learn Javascript", daysLeft: 26, user_id: @user.id, dayCreated: "04-06-2019", lastDay: "07-15-2019", clicked: false, timeClicked: "Apr 21 19, 5:43 pm", timeToClick: "April 22 19, 12:00 am")

@sweat = Challenge.create(name: "Sweat", daysLeft: 52, user_id: @user.id, dayCreated: "05-02-2019", lastDay: "08-10-2019", clicked: false, timeClicked: "June 19 19, 6:00 pm", timeToClick: "June 20 19, 12:00 am")

@paint = Challenge.create(name: "Paint", daysLeft: 86, user_id: @user.id, dayCreated: "06-05-2019", lastDay: "09-13-2019", clicked: false, timeClicked: "June 19 19, 4:23 pm", timeToClick: "June 20 19, 12:00 am")

#create calendar for first challenge "Learn Javascript"
Calendar.create(years: 2019, months: 4, date: 6, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 7, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 8, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 9, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 10, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 11, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 12, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 13, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 14, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 15, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 16, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 17, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 18, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 19, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 20, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 21, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 22, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 23, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 24, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 25, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 26, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 27, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 28, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 29, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 4, date: 30, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 1, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 2, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 3, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 4, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 5, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 6, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 7, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 8, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 9, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 10, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 11, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 12, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 13, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 14, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 15, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 16, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 17, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 18, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 19, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 20, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 21, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 22, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 23, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 24, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 25, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 26, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 27, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 28, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 29, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 30, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 5, date: 31, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 1, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 2, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 3, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 4, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 5, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 6, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 7, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 8, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 9, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 10, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 11, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 12, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 13, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 14, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 15, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 16, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 17, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 18, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 19, clicked: true, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 20, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 21, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 22, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 23, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 24, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 25, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 26, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 27, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 28, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 29, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 6, date: 30, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 1, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 2, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 3, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 4, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 5, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 6, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 7, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 8, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 9, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 10, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 11, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 12, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 13, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 14, clicked: false, userCell: true, challenge_id: @javascript.id)
Calendar.create(years: 2019, months: 7, date: 15, clicked: false, userCell: true, challenge_id: @javascript.id)

#create calendar for challenge "Sweat"

Calendar.create(years: 2019, months: 5, date: 2, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 3, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 4, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 5, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 6, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 7, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 8, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 9, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 10, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 11, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 12, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 13, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 14, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 15, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 16, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 17, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 18, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 19, clicked: true, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 20, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 21, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 22, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 23, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 24, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 25, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 26, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 27, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 28, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 29, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 30, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 5, date: 31, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 1, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 2, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 3, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 4, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 5, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 6, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 7, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 8, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 9, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 10, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 11, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 12, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 13, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 14, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 15, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 16, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 17, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 18, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 19, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 20, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 21, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 22, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 23, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 24, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 25, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 26, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 27, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 28, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 29, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 6, date: 30, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 1, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 2, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 3, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 4, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 5, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 6, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 7, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 8, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 9, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 10, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 11, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 12, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 13, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 14, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 15, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 16, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 17, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 18, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 19, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 20, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 21, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 22, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 23, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 24, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 25, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 26, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 27, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 28, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 29, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 30, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 7, date: 31, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 8, date: 1, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 8, date: 2, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 8, date: 3, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 8, date: 4, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 8, date: 5, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 8, date: 6, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 8, date: 7, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 8, date: 8, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 8, date: 9, clicked: false, userCell: true, challenge_id: @sweat.id)
Calendar.create(years: 2019, months: 8, date: 10, clicked: false, userCell: true, challenge_id: @sweat.id)

#create calendar for paint challenge
Calendar.create(years: 2019, months: 6, date: 5, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 6, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 7, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 8, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 9, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 10, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 11, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 12, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 13, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 14, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 15, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 16, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 17, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 18, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 19, clicked: true, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 20, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 21, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 22, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 23, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 24, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 25, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 26, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 27, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 28, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 29, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 6, date: 30, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 1, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 2, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 3, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 4, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 5, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 6, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 7, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 8, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 9, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 10, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 11, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 12, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 13, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 14, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 15, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 16, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 17, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 18, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 19, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 20, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 21, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 22, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 23, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 24, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 25, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 26, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 27, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 28, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 29, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 30, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 7, date: 31, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 1, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 2, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 3, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 4, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 5, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 6, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 7, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 8, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 9, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 10, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 11, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 12, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 13, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 14, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 15, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 16, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 17, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 18, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 19, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 20, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 21, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 22, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 23, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 24, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 25, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 26, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 27, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 28, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 29, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 30, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 8, date: 31, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 9, date: 1, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 9, date: 2, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 9, date: 3, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 9, date: 4, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 9, date: 5, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 9, date: 6, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 9, date: 7, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 9, date: 8, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 9, date: 9, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 9, date: 10, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 9, date: 11, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 9, date: 12, clicked: false, userCell: true, challenge_id: @paint.id)
Calendar.create(years: 2019, months: 9, date: 13, clicked: false, userCell: true, challenge_id: @paint.id)