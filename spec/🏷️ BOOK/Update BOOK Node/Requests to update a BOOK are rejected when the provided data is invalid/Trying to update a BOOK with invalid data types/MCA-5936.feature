@REQ_MCA-5928
Feature: Update BOOK Node
  As an API contributor
  I want to be able to update a BOOK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5935
  Rule: Requests to update a BOOK are rejected when the provided data is invalid

    @TEST_MCA-5936 @implemented
    Scenario: Trying to update a BOOK with invalid data types
      Given there exists a "BOOK" "F1 in Numbers"
      When the user updates the node "F1 in Numbers" with the following data
        | key                 | value |
        | title               | 1234  |
        | author              | 1234  |
        | publisher           | 1234  |
        | year_of_publication | TEST  |
        | isbn                | 1234  |
        | pages               | TEST  |
        | language            | 1234  |
      Then the request should be rejected with status code 400
