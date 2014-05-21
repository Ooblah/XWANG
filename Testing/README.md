watir-cucumber-automation-template
==================================

This expects Latest ruby(>1.9.2) installed.

Getting Started:

In cloned directory do,

gem install bundler

bundle install #this will install all required gems to get started

===========================================================================

Detailed Windows Installation

Steps 1: 
Download Ruby http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-1.9.3-p484.exe?direct and run exe. Please make sure that the checkbox's on the Optional Tasks are all selected

Step 2:
Confirm ruby was installed successfully by typing the following command in your terminal:

>>>>>>>ruby -v
ruby 1.9.3p484 (2013-11-22) [i386-mingw32]

Confirm Gems is installed correctly

>>>>>>> gem -v
1.8.28

Step 3:
Download Ruby DevKit https://github.com/downloads/oneclick/rubyinstaller/DevKit-tdm-32-4.5.2-20111229-1559-sfx.exe and run

Step 4:
Go to the Ruby DevKit directory and run the following commands:
>>>>>>> ruby dk.rb init
>>>>>>> ruby dk.rb install


Step 5: 
Download PhantomJS from http://phantomjs.org/download.html, please download the zip and place contents in C:\Ruby193\bin (This path will vary depending on where you've installed ruby)


Step 6: install bundler gem
>>>>>>> gem install bundler

Step 7:
Go to the cloned project from command terminal and execute the following command:
>>>>>>> bundle install

You are good to go, you can now write your own tests (Features/Step Definitions). To execute a test just run cucumber features/{feature-name}.feature. Replace feature-name with the name of the test you want to run.


Ex. cucumber features/example/example1.feature

Happy Testing!!!  


=================================================================================

Centos Installation:

Please follow along the instructions on this page.
https://www.digitalocean.com/community/articles/how-to-install-ruby-on-rails-on-centos-6-with-rvm



