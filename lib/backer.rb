class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def pb
        ProjectBacker.all.select do |instance|
            instance.backer == self
        end
    end
    #list all projects associated with backer
    def backed_projects 
        self.pb.map do |backer|
            backer.project
        end
    end

end