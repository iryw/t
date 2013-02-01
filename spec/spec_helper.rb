module ContainerMacro
  def create_example_tasks!(on)
    on.create_task "Example Task", :normal
    on.create_task "Another Task!", :low
    on.create_task "Wow Another Task!"
  end
end
