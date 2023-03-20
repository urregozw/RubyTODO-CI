# frozen_string_literal: true

class TodosController < ApplicationController
  def create
    @task = Task.new
    render 'create'
  end

  def save
    title = params[:task][:title]
    description = params[:task][:description]
    @task = Task.create(title: title, description: description)
    redirect_to action: 'show'
  end

  def show
    @tasks = Task.all
    render 'show'
  end

  def show_one
    @task = Task.find(params[:id])
    render 'show_one'
  rescue ActiveRecord::RecordNotFound => e
    # Record of id = :id could not be found
    redirect_to action: 'show'
  end

  def delete
    is_deleted = Task.delete(params[:id])
    Rails.logger.debug is_deleted
    redirect_to action: 'show'
  end
end
