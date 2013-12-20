###Week03-Day2

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `hw_w03_submission`
___

###Morning Exercise
- Write a Sinatra application
- A `get` request to '/' should display "Stopwatch has started..."
- A `get` request to '/stop' should display the difference between
	- the current time and the time the stopwatch was started

#####Hints
- On the `get` request to '/' save the current time to `sessions`
- On the `get` request to '/stop' calcualte the difference and display that
- You can get the current time using: `Time.now`
___

###Part 1 - Blog Lab
- Deploy the blog lab to Heroku as well as pushing it up to a repo of your own

###Part 2 - In a galaxy far, far away...
***Astronauts (per their job description) travel to many planets and moons.  We would like to keep track of these astronauts and all the places they have been to!***

- Create a Sinatra application with a database
- Create models for planets, moons, and astronauts 
	- These models should all have their own tables and own associations, i.e. belongs to, has many, has one, etc..
	- Consider how the models interact with each other when setting up the associations (***be sure to use a "has many" relationship***)
- A `get` request to '\' should show every astronaut along with every planet and moon that each individual has travelled to

***BONUS***

- Create a route that let you add new astronauts 
- Create a route that lets you pick an existing astronaut and add new planets and moons that they have visited (An astronaut that has already visited a few places may then decide to visit a few more, so we need to capture this!)