# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer: The view handles what the user will see. The controller handles all components of an app. The model creates the shape of the app.

  Researched answer: 
  
  The Model component corresponds to all the data-related logic that the user works with. The view component is used for all the UI logic of the application. The Controllers act as an interface between Model and View components to process all the logic and incoming requests, manipulate data using the Model component and interact with the Views to render the final output.
  
  The Model in a todo app will define what a "task" is and that a "list" is a collection of tasks.
  
  The View code will define what the todos and lists looks like, visually. 
  
  The Controller could define how a user adds a task, or marks another as complete. The Controller connects the View's add button to the Model, so that when you click "add task," the Model adds a new task.

2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the router in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the controller in the file app/controllers/blog_controller.rb                           
  ```
  class BlogController < ApplicationController
    def about
      render html: "About Me"
    end
  end
  ```

  Step 3: Create the View in the file app/view/statics/about.html.erb.
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index' --> displays all users

/users/1      method="GET"     # :controller => 'users', :action => 'show' --> displays one user

/users/new    method="GET"     # :controller => 'users', :action => 'new' --> displays form to create new user

/users/       method="POST"    # :controller => 'users', :action => 'create' --> to create a new user

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit' --> displays form to edit a specific user

/users/1      method="PUT"     # :controller => 'users', :action => 'update' --> to update a specific user

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy' --> to delete a specific user



3b. Which of the above routes must always be passed params and why?

Edit, update, and destroy so you can specify which user to act upon. You pass id's when operating on specific user.

4. What is the public folder used for in Rails?

  Your answer: 
  Researched answer: "Dumb" files that don't interact with the backend.



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

get "/game/:guess" => "main#game", as: "guess"


6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: 

  Researched answer: The action attribute specifies where to send the form-data when a form is submitted.



7. Name two rails generator commands and what files they create:

  Your answer: rails g resource, rails g model

  Researched answer: A resource and model are generated.


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1. Don't Repeat Yourself: DRY is a principle of software development which states that "Every piece of knowledge must have a single, unambiguous, authoritative representation within a system." By not writing the same information over and over again, our code is more maintainable, more extensible, and less buggy.

2. The vendor folder is for third-party code.

3. Rails uses the tmp directory to hold temporary files for intermediate processing.

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer: Cookies are data saved on client side. 

  Researched answer:
