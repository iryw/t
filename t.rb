#!/usr/bin/env ruby

class Task
  attr_reader :message, :priority

  # priority is assumed to be a symbol
  def initialize(message, priority)
    @message = message
    @priority = priority
  end

  def reprioritize!(new_priority)
    @priority = new_priority
  end
end

class Container
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def create_task(message, priority=:normal)
    @tasks << Task.new(message, priority)
  end

  def read_task(task_index)
    @tasks[task_index].message
  end

  def delete_task!(task_index)
    @tasks.delete_at(task_index)
  end

  def reprioritize!(task_index, new_priority)
    @tasks[task_index].reprioritize!(new_priority)
  end
end

class T
  def initialize
    @tasks_dir = 'tasks/'
    # @handler = Container.new []
  end

  def tasks_directory_exists?
    File.directory?(@tasks_dir)
  end
  
  def create_tasks_directory!
    Dir.mkdir(@tasks_dir, 0644) if tasks_directory_exists?
  end
end

