Now, answer these questions:

    What is Sinatra? Where does it run?
        Sinatra is run on the server. When a client, e.g a browser makes a request to a website Sinatra processes the request, formats and returns the response

    What is a Gemfile? How do you use it in your Sinatra Application? Give step by step instructions.
        A Gemfile is a way to control the dependencies of an application. All of the gems needed by an application, and all of the dependencies that all of those gems need to function can then be stored in one place.

        How to use a Gemfile

        The Gemfile needs to have the secure source location at the top of the file, which is https://rubygems.org. Then, inside the Gemfile you list the gems needed for your app to function (e.g. gem 'sinatra') and any special gems needed for the development, test, or production environment.

        In your app.rb file (which contains the controllers/routes) at the top of the file you then include require 'bundler' and Bundler.require 
        This will then ensure that your application will have all of the files that it needs to run on Sinatra in one place.


    What is an ORM? What are the basic features of an ORM? Why is it helpful?
        An ORM is a way to manage and persist data for your application. ORMs have several functions, to create, read, update, and delete data. ORMs allow us to structure and query our data in a variety of different ways.


    What is the public folder? What do we use it for?
        The public folder is designed to house static assets like css files and images. It contains files that will not be dynamically changed.

    What is REST? Why is it useful?
        REST is a framework for dealing with the routes for interacting with the data on our website. It is useful because if a site follows a RESTful framework, developers and users who access the site will know how to access the CRUD functionality of the site.

    Suppose I, with my browser, send an HTTP get request to the route that will render the view of all the SpaceCats. Walk me through step by step how your application handles that request.

        So, if you have the browser send a get request, it goes through rack or whatever interface is running to the server. It then goes through the app.rb file to find the route to the index file for all of the SpaceCats. Once it locates the proper route, it then goes to the proper erb file. The server processes the embedded ruby accesses the database, returns the list of SpaceCats and converts everything to a properly form text file and then returns the file to the user
