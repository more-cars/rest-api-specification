@REQ_MCA-4052
Feature: Get PRICE Node by ID
  As an API consumer
  I want to be able to request a specific PRICE
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-4055
  Rule: Requests are rejected when there exists no PRICE with the provided ID

    @TEST_MCA-4056 @implemented
    Scenario: Requesting a PRICE with invalid ID
      When the user requests a non-existing "PRICE"
      Then the request should be rejected with status code 404
