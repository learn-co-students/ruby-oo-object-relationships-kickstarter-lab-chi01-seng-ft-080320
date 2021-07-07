class Backer
    #initalize with name and add to array of all Backers
    @@all = []

    def self.all
        @@all
    end 

    def initialize(name)
        @name = name 
        Backer.all << self 
    end 

    attr_reader :name 

    #creates a currentbacker instance
    def back_project(project)
        ProjectBacker.new(project, self)
    end 
    #list all project backers associated wth backer
    def projectbackers
        ProjectBacker.all.select do |pb_instance|
            pb_instance.backer == self
        end
    end
    #list all projects associated with backer
    def backed_projects 
        self.projectbackers.map do |backer_pbs|
            backer_pbs.project 
        end
    end
end #of Backer class