class General #this is a template of how pages.rb files should be written
  class << self
    
    $header_collector_id = CONFIG['header_collector_number_input']

    ###### Sign In / Sign Out Functions ########    
        def do_login(lvl="L1", page="Home", collector_number="51000088201", pin="1111")
          case lvl
          when 'L1' then General.do_L1_login(page).should == true
          when 'L1.9' then General.do_L19_login(page).should == true
          when 'L2' then General.do_L2_login(page, collector_number="51000088201").should == true
          when 'L3' then General.do_L3_login(page, collector_number, pin).should == true
          else
            $logger.info("security lvl not defined")
          end
        end
        
        def do_L1_login(return_to_page, collector_number=$default_collector_number)
          General.sign_out
          if $browser.checkbox(:id,"header-rememberme").checked? == true
            $logger.info('Logging out and logging back in as L1')

            $browser.text_field(:id=>$header_collector_id).set(collector_number.to_s)
            Header.select_remember_me(false)
            $browser.button(:value=>"Go").click
            General.sign_out        
            $browser.goto $base_url+return_to_page
          end          
          $logger.info('Security level is L1')
        end
        
        def do_L19_login(return_to_page, collector_number=$default_collector_number)        

          General.sign_out
          if $browser.checkbox(:id,"header-rememberme").checked? == false
            $logger.info('Logging out and logging back in as L1.9')
            $browser.text_field(:id=>$header_collector_id).set(collector_number.to_s)
            Header.select_remember_me(true)
            $browser.button(:value=>"Go").click
            General.sign_out
            $browser.goto $base_url+return_to_page
            $logger.info("Signed in as L1.9 and now going back to"+$base_url+return_to_page)
          end
          
          $logger.info('Security level is L1.9')

        end  
        
        def do_L2_login(return_to_page, collector_number=$default_collector_number)
          General.sign_out
          $browser.goto $base_url+return_to_page
          $browser.text_field(:id=>$header_collector_id). set(collector_number.to_s)
          $browser.button(:value=>"Go").click 
          $browser.goto $base_url+return_to_page   
          return General.verify_logged_in 
        end     
        
        def do_L3_login(return_to_page, collector_number=$default_collector_number, pin="1111")
          General.sign_out
          $browser.goto $base_url+return_to_page
          General.sign_in(collector_number, 1111)
          return General.verify_logged_in 
  
        end  
           
        def sign_out()
          if $browser.a(:id => "header-link-signout").exists?
             $browser.a(:id => "header-link-signout").click
          end
        end
        
        
        def sign_in(collector_number=$default_collector_number, pin="1111")      
          if $browser.a(:id => "header-link-signin").exists?
             $browser.a(:id => "header-link-signin").when_present.click
             $browser.div(:class => "header-nav-signin").wait_until_present
             $browser.text_field(:id=> "header_signin_overlay_collector_number").when_present.click
             $browser.text_field(:id=> "header_signin_overlay_collector_number").set(collector_number.to_s)
             $browser.text_field(:id=>"header_signin_overlay_collector_pin").click             
             $browser.text_field(:id=>"header_signin_overlay_collector_pin").set(pin.to_s)
             $browser.button(:name => "/atg/userprofiling/ProfileFormHandler.login").click
          end
        end  
        
        def verify_logged_in()
          if $browser.div(:class => "balances").exists?
            $logger.info("Found div that contains users cash/dream balance")
            return true
          end
          $logger.info("Did not find div that contains users cash/dream balance")
          return false
        end   
    
####END####     
  end
end
