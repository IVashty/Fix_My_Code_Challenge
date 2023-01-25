### Missing shibhang!!!
#!/usr/bin/ruby
#  Sort integer arguments (ascending)
#
###

#missing code
result = ARGV.select { |arg| arg.match(/^-?[0-9]+$/) }.map(&:to_i).sort
puts result
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i

    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        if result[i] < i_arg
            i += 1
        else
            result.insert(i - 1, i_arg)
            is_inserted = true
            break
            next
        end
    end
end

puts result
