@REQ_MCA-2629
Feature: Create MAGAZINE Node
  As an API contributor
  I want to be able to create MAGAZINES
  So I can fill gaps in the database

  @RULE_MCA-2632
  Rule: Requests to create a MAGAZINE are rejected when the provided data is invalid

    @TEST_MCA-2634
    Scenario: Trying to create a MAGAZINE with invalid data types
      When the user tries to create a "MAGAZINE" "Top Gear" with the following data
        | key                    | value                   | datatype |
        | name                   | Top Gear                | boolean  |
        | founded                | 1993                    | boolean  |
        | defunct                |                         | boolean  |
        | focus                  | sports cars             | boolean  |
        | publication_frequency  | monthly                 | boolean  |
        | single_copy_price      | 5.99                    | boolean  |
        | single_copy_price_unit | £                       | boolean  |
        | publication_format     | print                   | boolean  |
        | circulation            | 150884                  | boolean  |
        | circulation_year       | 2013                    | boolean  |
        | publisher              | Immediate Media Company | boolean  |
        | issn                   | 1350-9624               | boolean  |
      Then the request should be rejected with status code 400
