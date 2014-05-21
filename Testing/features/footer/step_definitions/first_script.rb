require'rubygems'
require'watir'
require_relative 'adoption_helper'

include AdoptionHelper

goto_the_puppy_adoption_site
adopt_puppy_number1
continue_adopting_puppies
adopt_puppy_number2
checkout_with('Cheezy','123 Main','cheezy@foo.com','Check')
verify_page_contains'Thank you for adopting a puppy!'
close_the_browser