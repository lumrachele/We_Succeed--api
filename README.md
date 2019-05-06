## WeSucceed: The Backend

This Rails application is the backend for WeSucceed. It provides access to the necessary API endpoints and communicates with the PostgreSQL Database. <a href=https://vimeo.com/333179786>Demo Video</a>

Frontend: [WeSucceed Frontend Repository](https://github.com/lumrachele/we_succeed--front_end)

<h2>Contents</h2>

* [Essential Gems](#essential-gems-&-dependencies)

* [Installation](#installation)

* [Models](#models)

* [Future Development](#future-development)



# <h2>Essential Gems & Dependencies</h2>

This app uses Ruby version 2.5.3. This Rails application was created using ```rails new we_succeed --api --database=postgresql```, thus allowing the app to be created as an API and directing it to use postgreSQL databases. Gems 'rack-cors' and 'active_model_serializers' are used for Cross-Origin Resource Sharing, allowing for cross-origin AJAX.

# <h2>Installation</h2>

To get started with this app, simply fork and clone this repository, as well as the [frontend repository](https://github.com/lumrachele/we_succeed--front_end). Set up the front end as per the instructions in that repository. Remember to ```bundle install``` and run ```rails db:create && rails db:migrate && rails db:seed``` to create and initialize the database. Double check that you have PostgreSQL running on your computer. To run, enter the command ```rails s``` in your terminal and navigate to ```http://localhost:3000``` or whatever port number you would like to indicate.

# <h2>Models</h2>

There are four models used for this application:

<h3>User</h3>

A ```User``` model has attributes of name and email. At this moment, no password is required. Only seeded users have access to the application.

Key Controller Methods: index, show

<h3>Activity</h3>

An ```Activity``` instance has just a name, and is created when the user logs a new activity with the new activity form.

<h3>Goal</h3>

The ```Goal``` model has a name, point value, user_id, reached boolean, and current boolean. This goal is what the user is logging activities to reach. When a user reaches a goal's value, he or she is immediately prompted to make a new goal. This also updates the reached goal's status.

Key Controller Methods: create, show, update


<h3>UserActivity</h3>

A ```UserActivity``` is also created when a user creates an activity. This establishes the relationship between the activity and the user, the point value, the goal_id, and any notes (which includes the name). This keeps track of which activities are logged towards which goals, and in what account.

Key Controller Methods: index, create, show



# <h2>Future Development</h2>
- customize serializers such that they provide only the necessary information
- implement auth
- allow creation of a user account
- preset goal point amounts

At this moment, this application does not allow for open source contributions.
