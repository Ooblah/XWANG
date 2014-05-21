require "#{File.dirname(__FILE__)}/../config/main_win.rb" #including main.rb starts the process

#set base url for test cases this can be default set in config.yml or can be passed with cucumber command
def set_base_url
  $base_url = (ENV[$site_prefix+'_env'].nil? || ENV[$site_prefix+'_env'].empty?) ? CONFIG[$site_prefix+'_env'] : ENV[$site_prefix+'default_env']      
end

def set_start_page
  $default_start_page = (ENV[$site_prefix+'_start_page'].nil? || ENV[$site_prefix+'_start_page'].empty?) ? CONFIG[$site_prefix+'_start_page'] : ENV[$site_prefix+'_start_page']     
end

def set_collector_number 
  $default_collector_number = (ENV[$site_prefix+'_collector_number'].nil? || ENV[$site_prefix+'_collector_number'].empty?) ? CONFIG[$site_prefix+'_collector_number'] : ENV['default_collector_number']    
end

set_base_url
set_start_page
set_collector_number


