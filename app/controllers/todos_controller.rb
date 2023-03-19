class TodosController < ApplicationController
  def create
    @task = Task.new
    render "create"
  end

  def save
    title = params[:task][:title]
    description = params[:task][:description]
    @task = Task.create(title: title, description: description)
    redirect_to action: "show"
  end

  def show
    render "show"
  end
end
