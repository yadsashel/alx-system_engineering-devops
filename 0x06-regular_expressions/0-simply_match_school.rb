#!/usr/bin/env ruby

# Your regular expression using Oniguruma
pattern = /School/

# Accept one argument from the command line
ARGV.each do |arg|
  # Apply the regular expression
  if match = arg.match(pattern)
    # Print the matched part followed by "$"
    puts match.to_s + "$"
  else
    # Print "$" if there's no match
    puts "$"
  end
end

