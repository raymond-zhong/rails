require_relative 'project'

RSpec.describe Project do

    it 'has a getter and setter for name attribute' do

      project = Project.new("Project Name", "I am a project")
      project.name = "Changed Name"

      expect(project.name).to eq("Changed Name")
    end
    it 'has a getter and setter for description attribute' do

      project = Project.new("Project Description", "I am a project")
      project.description = "Changed Description"

      expect(project.description).to eq("Changed Description")
    end
    # ...
# building off our previous example lets add a test to make sure our method returns the correct value
it 'has a method elevator_pitch to explain name and description' do
  #lets create two new projects
  project1 = Project.new('Project 1', 'description 1')
  project2 = Project.new('Project 2', 'description 2')
  #if we call elevator_pitch method we should expect to get that project name and description back
  expect(project1.elevator_pitch).to eq("Project 1, description 1")
  expect(project2.elevator_pitch).to eq("Project 2, description 2")
end
it 'has a method add_to_team to add a new team_member' do
  #lets create one new project
  project3 = Project.new('Project 3', 'description 3')
  #if we call add_to_team method we should expect to get a new team_member back
  expect(project3.add_to_team("member1")).to eq("member1")
end
end
