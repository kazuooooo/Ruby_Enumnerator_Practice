require './Person.rb'
class Department
  include Enumerable
  def initialize
    @department = []
  end

  def add(person)
    @department << person
    self
  end

  def each
    @department.each do |person|
      yield person
    end
  end
end