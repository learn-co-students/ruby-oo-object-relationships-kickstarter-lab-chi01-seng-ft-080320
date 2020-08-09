class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def pb
        ProjectBacker.all.select do |instance|
            instance.project == self
        end
    end
    #list all projects associated with backer
    def backers 
        self.pb.map do |project|
            project.backer
        end
    end
end