class Project
    attr_accessor :name, :description, :team_member
    def initialize name, description
      @name = name
      @description = description
    end
    def name
      @name
    end
    def elevator_pitch
      "#{@name}, #{@description}"
    end
    def add_to_team(team_member)
      @team_member = team_member
    end
end
project1 = Project.new("Project 1", "Description 1")
puts project1.name #prints out Project 1
project1.elevator_pitch #prints out 'Project 1, Description 1"
puts project1.add_to_team("raymond")
