@REQ_MCA-2629
Feature: Create MAGAZINE Node
  As an API contributor
  I want to be able to create MAGAZINES
  So I can fill gaps in the database

  @RULE_MCA-2632
  Rule: Requests to create a MAGAZINE are rejected when the provided data is invalid

    @TEST_MCA-2634 @implemented
    Scenario: Trying to create a MAGAZINE with invalid data types
      When the user tries to create a "MAGAZINE" with the following data
        | key                    | value |
        | name                   | true  |
        | founded                | true  |
        | defunct                | true  |
        | focus                  | true  |
        | publication_frequency  | true  |
        | single_copy_price      | true  |
        | single_copy_price_unit | true  |
        | publication_format     | true  |
        | circulation            | true  |
        | circulation_year       | true  |
        | publisher              | true  |
        | issn                   | true  |
        | country_code           | true  |
      Then the request should be rejected with status code 400
