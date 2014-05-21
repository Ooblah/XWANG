require "#{File.dirname(__FILE__)}/../../common_steps.rb" #include common steps defined earlier

Then(/^search for "(.*?)" in Header Search field$/) do |query|
  Header.search(query)
end
