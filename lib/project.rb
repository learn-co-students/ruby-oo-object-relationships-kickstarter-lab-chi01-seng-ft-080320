class Project

    #initalize with title and add to array of all Project instances

    @@all = []

    def self.all 
        @@all 
    end 

    def initialize(title)
        @title = title
        Project.all << self 
    end 

    attr_reader :title
    #be able to add projectbacker given a backer instance
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    #list all projectbackers associated with project
    def projectbackers
        ProjectBacker.all.select do |pb_instance|
            pb_instance.project == self 
        end 
    end
    #list all backers associated with projects
    def backers 
        self.projectbackers.map do |project_pb|
            project_pb.backer 
        end
    end

end #of Project class