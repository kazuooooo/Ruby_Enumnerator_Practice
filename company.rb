require './person.rb'
require './department.rb'

class Company
  include Enumerable
  def initialize
    @company = []
  end

  def add(department)
    @company << department
    self
  end

  def each
    @company.each do |department|
      yield department
    end
  end
end