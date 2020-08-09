
require 'pry'

class Project
    
    
    attr_accessor :title

    @@all = []

    def initialize (title)
        @title = title

        self.class.all << self
    end


    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        my_backers = []
        ProjectBacker.all.each do |individual_project|
            if(individual_project.project == self)
                my_backers << individual_project.backer
            end
        end
        my_backers
    end



    def self.all
        @@all
    end
end