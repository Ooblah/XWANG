Feature: Just a simple feature description
  Put description of what the feature is doing here.
  I want to visit site and search for all APPLE products.

  Scenario Outline: Searching for Miles
  Given I am on the site
  Then search for <"search term"> in search field

    Scenarios: 
      | search term |
      | miles   |