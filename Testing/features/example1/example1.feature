Feature: Just a simple feature description
  Put description of what the feature is doing here.
  I want to visit site and search for all APPLE products.

  Scenario Outline: Searching for Apples
    Then search for "<product>" in Header Search field

    Scenarios: 
      | product |
      | APPLE   |
