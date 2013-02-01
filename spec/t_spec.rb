require_relative '../t.rb'

describe T do
  let(:t) { T.new }

  it "creates tasks/ directory if it doesn't exist" do
    Dir.rmdir('tasks') if t.tasks_directory_exists?
    t.create_tasks_directory!
    File.directory?('tasks').should == true
  end
end
