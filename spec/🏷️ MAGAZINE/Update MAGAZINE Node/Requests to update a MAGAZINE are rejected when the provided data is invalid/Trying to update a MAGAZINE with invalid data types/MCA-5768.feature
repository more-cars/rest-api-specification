@REQ_MCA-5760
Feature: Update MAGAZINE Node
  As an API contributor
  I want to be able to update a MAGAZINE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5767
  Rule: Requests to update a MAGAZINE are rejected when the provided data is invalid

    @TEST_MCA-5768 @implemented
    Scenario: Trying to update a MAGAZINE with invalid data types
      Given there exists a "MAGAZINE" "sport auto"
      When the user updates the node "sport auto" with the following data
        | key                    | value |
        | name                   | 1234  |
        | founded                | TEST  |
        | defunct                | TEST  |
        | focus                  | 1234  |
        | publication_frequency  | 1234  |
        | single_copy_price      | TEST  |
        | single_copy_price_unit | 1234  |
        | publication_format     | 1234  |
        | circulation            | TEST  |
        | circulation_year       | TEST  |
        | publisher              | 1234  |
        | issn                   | 1234  |
        | country_code           | 1234  |
      Then the request should be rejected with status code 400
