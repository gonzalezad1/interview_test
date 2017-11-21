class Interview < ApplicationRecord

  require 'csv'
  # def initialize(name, last_name, first_name,office,employee_id)
  #   @name= name
  #   @last_Name = last_name
  #   @first_name = first_name,
  #   @office = office
  #   @employee_id=employee_id
  # end
  class << self
    def show_result(file)
      CSV.foreach(file) do |row|
        name, employee_id, office = row[0],row[1],row[2]
        last_name, first_name = name.split
        puts "employee_id: #{employee_id}"
        puts "office: #{office}"
        puts "last_name: #{last_name}"
        puts "first_name: #{first_name}"
      end
    end

    def office_name(file)
      arr=[]
      CSV.foreach(file) do |row|
        arr << row[2]
      end
      print arr.sort!.uniq
      return arr
    end

    def number_per(arr)
      count_hash = Hash.new(0)
      array_result=[]
      arr.each do |v|
        count_hash[v] += 1
      end
      count_hash.each do |k, v|
        array_result << v
      end
      print array_result
    end
  end
end
