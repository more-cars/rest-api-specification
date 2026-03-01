@REQ_MCA-2727
Feature: Get MAGAZINE ISSUE Node by ID
  As an API consumer
  I want to be able to request a specific MAGAZINE ISSUE
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-2728
  Rule: Requesting a MAGAZINE ISSUE with a valid ID returns the respective node

    @TEST_MCA-2729
    Scenario: Requesting a MAGAZINE ISSUE with valid ID
      Given there exists a "MAGAZINE ISSUE" "Sieger-Typen"
      When the user requests the "MAGAZINE ISSUE" "Sieger-Typen"
      Then the response should return with status code 200
      And the response should return the "MAGAZINE ISSUE" "Sieger-Typen"
