# Write your code here.
require 'pry'

def line(customer_line)
   if (customer_line.length > 0)
        people_in_line = customer_line.map.with_index {|customer, index| "#{index += 1}. #{customer}"}
        puts "The line is currently: #{people_in_line.join(" ")}" 
    else
       puts "The line is currently empty." 
    end
end


def take_a_number(customer_line, customer)
    if (customer_line.length >= 0)
        customer_line << customer
        puts "Welcome, #{customer}. You are number #{customer_line.length} in line."
  end
end

def now_serving(customer_line)
    if (customer_line.length == 0)
       puts "There is nobody waiting to be served!"
    else 
        next_customer = customer_line.find do |customer| 
            puts "Currently serving #{customer}."
            customer_line.shift
        end
    end
end