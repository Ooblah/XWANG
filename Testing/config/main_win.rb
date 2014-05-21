require "rubygems" #all the require statements should be here
require "watir"
require "cucumber"
#require "mysql"
require "watir-webdriver"


$logger = Logger.new(STDERR)
$logger = Logger.new(STDOUT)

$logger = Logger.new("#{File.dirname(__FILE__)}/../logs/watir.log", 'weekly')

if ENV['HEADLESS'] == 'true'
  require 'headless'

  headless = Headless.new
  headless.start
  $logger.info('Starting Headless')
  $isheadless='true'
    at_exit do
      headless.destroy
      $logger.info('----------Exiting--------\n')
      $logger.close

    end
  else
    at_exit do
      $logger.info('----------Exiting--------\n')
      $logger.close
    end
    $isheadless='false'
end

$site_prefix = 'default'
case ENV['SITE']
  when 'local'
    $site_prefix='local'
  when 'dev5'
    $site_prefix='dev5'    
  else
    $logger.info("SITE is not configured in profile")
end

CONFIG = YAML.load_file("#{File.dirname(__FILE__)}/config.yml")

Dir["#{File.dirname(__FILE__)}/../lib/**/*.rb"].each { |f| require f } #load all the lib files

Dir["#{File.dirname(__FILE__)}/../pages/**/*.rb"].each { |f| require f } # all page functions are loaded

@After
After do |scenario|
  if(scenario.failed?)
      _fileTime = Time.new.strftime("%Y-%m-%d_%H-%M-%S")
      $browser.driver.save_screenshot "#{File.dirname(__FILE__)}/../screenshots/after_#{_fileTime}.png"
      embed "#{File.dirname(__FILE__)}/../screenshots/after_#{_fileTime}.png",'image/png'
  end
end  

client = Selenium::WebDriver::Remote::Http::Default.new
client.timeout = 180 # seconds – default is 60

$browser = Watir::Browser.new #, :http_client => client
#$browser.driver.manage.timeouts.implicit_wait = 5
#$browser.driver.manage.window.maximize


