

require 'pry'

class Backer 

    attr_accessor :name

    @@all  = []

    def initialize (name)
        @name = name
        self.class.all
    end



    def back_project(project)
        ProjectBacker.new(project, self)
    end


    def backed_projects
        my_projects = [] 
        ProjectBacker.all.each do |individual_project|
            if (individual_project.backer == self)
                my_projects << individual_project.project
            end
        end
        my_projects
    end


    def self.all
        @@all
    end


end