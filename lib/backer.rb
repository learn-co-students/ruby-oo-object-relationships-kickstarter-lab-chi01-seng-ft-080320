class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backer_pb = ProjectBacker.all.select {|project_instance|project_instance.backer == self}
        backer_projects = backer_pb.map {|project_instance|project_instance.project}
    end
    
end