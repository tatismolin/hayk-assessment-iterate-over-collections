require "pry"

class Company
    attr_accessor :name, :size
    @@all = []

    def initialize(name, size)
        @name = name
        @size = size
        @@all << self
    end

    def self.name_and_size
        all.map do |company| 
            p "#{company.name} - #{company.size}"
        end
    end

    def self.size
        all.reduce(0) { |sum, company| sum + company.size}
    end

    def self.filter_by_size
        all.select { |company| company.size > 100 } 
    end

    def self.find_beta
        all.find { |company| company.name == "Beta" } 
    end

    def self.find_max_size
        all.max_by { |company| company.size } 
    end

    def self.sort_by_size
        all.sort_by { |company| company.size } 
    end

    def self.all
        @@all
    end

end

alpha = Company.new('Alpha', 30)
beta = Company.new('Beta', 300)
delta = Company.new('Delta', 3000)

binding.pry
0

# DONE. Generate a list of strings with the name and size (eg. "Alpha - 30")
# DONE. Combine all the sizes with reduce
# DONE. Filter the list to show only companies over 100
# DONE. Find the company named "Beta"
# DONE. Find the largest company
# DONE. Sort the companies from largest to smallest
