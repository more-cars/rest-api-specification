@REQ_MCA-2727
Feature: Get MAGAZINE ISSUE Node by ID
  As an API consumer
  I want to be able to request a specific MAGAZINE ISSUE
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-2730
  Rule: Requests are rejected when there exists no MAGAZINE ISSUE with the provided ID

    @TEST_MCA-2731 @implemented
    Scenario: Requesting a MAGAZINE ISSUE with invalid ID
      When the user requests a non-existing "MAGAZINE ISSUE"
      Then the request should be rejected with status code 404
