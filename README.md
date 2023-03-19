# RubyTODO-CI

This is a simple application that creates, shows and deletes TODO tasks.

This application was developed using ruby version 3.0.2 and rails v7

The following routes are going to be supported:

* /todo/create
* /todo/show/:id?
* /todo/delete/:id

## Getting started

Start by cloning the repository and run bundle install to get all the dependencies needed to run the application
Then run the migrations to create the tables needed to persist data

```console
$ bundle install
$ rails db:migrate
```

Once you are done setting up all the dependencies you can now start your application by running in your console

```console
$ rails server
```
