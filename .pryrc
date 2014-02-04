# Try using Awesome Print as default
begin
  require "awesome_print"
  AwesomePrint.pry!
rescue LoadError, NameError
end