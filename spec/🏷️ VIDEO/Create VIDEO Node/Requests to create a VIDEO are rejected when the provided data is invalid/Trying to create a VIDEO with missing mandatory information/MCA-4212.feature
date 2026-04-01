@REQ_MCA-4208
Feature: Create VIDEO Node
  As an API contributor\
  I want to be able to create VIDEO nodes\
  So I can later use them to illustrate other nodes

  @RULE_MCA-4211
  Rule: Requests to create a VIDEO are rejected when the provided data is invalid

    @TEST_MCA-4212 @implemented
    Scenario: Trying to create a VIDEO with missing mandatory information
      When the user tries to create a "VIDEO" "P1 vs F40" with the following data
        | key | value | datatype |
      Then the request should be rejected with status code 400
