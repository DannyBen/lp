require 'yaml'

def lp!(anything)
  puts anything.to_yaml
end

def lp(anything)
  reset   = "\e[0m"
  red     = "\e[31m"
  green   = "\e[32m"
  blue    = "\e[34m"

  result = anything.to_yaml

  result.gsub! %r{!ruby/object:}, "#{blue}>>> #{reset}"
  result.gsub!(/([\s-]*:?.*?:)(.*)/, "#{green}\\1#{reset}\\2")
  result.gsub!(/([&*]\d+)/, "#{red}\\1#{reset}")

  puts result
end

def lp?(anything)
  methods = (anything.methods - Object.methods).sort
  vars = anything.instance_variables.sort
  lp methods: methods, instance_vars: vars
end
