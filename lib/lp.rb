require 'yaml'

def lp!(anything)
  puts anything.to_yaml
end

def lp(anything)
  reset   = "\e[0m"
  red     = "\e[31m"
  green   = "\e[32m"
  yellow  = "\e[33m"
  blue    = "\e[34m"
  magenta = "\e[35m"
  cyan    = "\e[36m"

  result = anything.to_yaml
  
  result.gsub! /!ruby\/object:/, "#{blue}>>> #{reset}"
  result.gsub! /([\s\-]*:?.*?:)(.*)/, green + '\1' + reset + '\2'
  result.gsub! /([&*]\d+)/, red + '\1' + reset

  puts result
end

def lp?(anything)
  methods = (anything.methods - Object.methods).sort
  vars = anything.instance_variables.sort
  lp methods: methods, instance_vars: vars
end
