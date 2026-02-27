@REQ_MCA-2629
Feature: Create MAGAZINE Node
  As an API contributor
  I want to be able to create MAGAZINES
  So I can fill gaps in the database

  @RULE_MCA-2630
  Rule: Requests to create a MAGAZINE are accepted when the provided data is valid

    @TEST_MCA-2631 @implemented
    Scenario: Creating a MAGAZINE with valid data
      When the user creates a "MAGAZINE" "Top Gear" with the following data
        | key                    | value                   | datatype |
        | name                   | Top Gear                | string   |
        | founded                | 1993                    | number   |
        | defunct                |                         | number   |
        | focus                  | sports cars             | string   |
        | publication_frequency  | monthly                 | string   |
        | single_copy_price      | 5.99                    | number   |
        | single_copy_price_unit | £                       | string   |
        | publication_format     | print                   | string   |
        | circulation            | 150884                  | number   |
        | circulation_year       | 2013                    | number   |
        | publisher              | Immediate Media Company | string   |
        | issn                   | 1350-9624               | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "MAGAZINE" "Top Gear"
