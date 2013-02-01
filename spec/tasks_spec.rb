require_relative '../t.rb'

describe Task do
  let(:task) { Task.new "Example TaskObject", :normal }

  it "has a message and a priority" do
    task.message.should == "Example TaskObject"
    task.priority.should == :normal
  end

  it "should be able to mutate it's priority" do
    task.priority.should == :normal
    task.reprioritize! :low
    task.priority.should == :low
  end
end
