class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        project_pb = ProjectBacker.all.select {|backer_instance|backer_instance.project == self}
        project_backer = project_pb.map {|backer_instance|backer_instance.backer}
    end

    def projects 
        self.projectbackers.map do |backer_instance|
            backer_instance.projectbackers
        end
    end
end
