@REQ_MCA-2714
Feature: Create MAGAZINE ISSUE Node
  As an API contributor
  I want to be able to create MAGAZINE ISSUES
  So I can fill gaps in the database

  @RULE_MCA-2717
  Rule: Requests to create a MAGAZINE ISSUE are rejected when the provided data is invalid

    @TEST_MCA-2718 @implemented
    Scenario: Trying to create a MAGAZINE ISSUE with missing mandatory information
      When the user tries to create a "MAGAZINE ISSUE" "Sieger-Typen" with the following data
        | key | value | datatype |
      Then the request should be rejected with status code 400
