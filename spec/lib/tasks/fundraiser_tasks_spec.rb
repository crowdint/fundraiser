require 'spec_helper'
require 'rake'

describe "fundraiser:manager" do
  let(:rake)      { Rake::Application.new }
  let(:task_name) { self.class.top_level_description }
  let(:task_path) { "../lib/tasks/#{task_name.split(":").first}_tasks" }
  subject         { rake[task_name] }

  def loaded_files_excluding_current_rake_file
    $".reject {|file| file == Rails.root.join("#{task_path}.rake").to_s }
  end

  before do
    Rake.application = rake
    Rake.application.rake_require(task_path, [Rails.root.to_s], loaded_files_excluding_current_rake_file)

    Rake::Task.define_task(:environment)
  end

  it "creates a manager user with specified attributes" do
    user = stub_model Fundraiser::User
    user.should_receive(:manager!)
    Fundraiser::User.should_receive(:new).and_return user
    subject.invoke('email@test.com', '123456')
    user.email.should eq 'email@test.com'
    user.password.should eq '123456'
  end
end
