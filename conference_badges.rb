# Write your code here.
def badge_maker(name)
    return "Hello, my name is #{name}."
end



def batch_badge_creator(attendees)
    array = []
    attendees.each {|name| array << badge_maker(name)}
    return array    
end



def assign_rooms(attendees)
    new_array =[]
    attendees.each_with_index do |name,index|
        new_array<<"Hello, #{name}! You'll be assigned to room #{index+1}!"
    end
    return new_array
end


def printer(attendees)
    batch_badge_creator(attendees).each{|names|puts names}
    assign_rooms(attendees).each{|room|puts room}
end

