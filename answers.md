# Q0: Why is this error being thrown?
-Not entirely sure.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They are all starting pokemon. I was keeping track and they are appearing randomly.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It is calling the capture method and feeding it the pokemon ID that already exist there


# Question 3: What would you name your own Pokemon?
Dirks

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed the trainer id of the current pokemon, current trainer, which is a gem, because we want to go back to our trainer page/stay on i

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

We are telling us the outpit that we want it to give out, the error message that we know caused the error, and we know where the error is, goofd for testing

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
