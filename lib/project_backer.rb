class ProjectBacker

    #initialize with Backer and Project and add to list of all projectBackers

    @@all = []

    def self.all
        @@all 
    end 

    def initialize(project, backer)
        @backer = backer 
        @project = project 
        ProjectBacker.all << self 
    end 

    attr_reader :backer, :project

end #of ProjectBacker class