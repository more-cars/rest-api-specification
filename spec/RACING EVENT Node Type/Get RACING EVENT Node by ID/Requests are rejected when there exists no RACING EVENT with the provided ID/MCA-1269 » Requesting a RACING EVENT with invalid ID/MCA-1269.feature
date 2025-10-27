@REQ_MCA-1265
Feature: Get RACING EVENT Node by ID
  As an API consumer
  I want to be able to request a specific RACING EVENT
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-1268
  Rule: Requests are rejected when there exists no RACING EVENT with the provided ID

    @TEST_MCA-1269 @implemented
    Scenario: Requesting a RACING EVENT with invalid ID
      When the user requests a non-existing "RACING EVENT"
      Then the request should be rejected with status code 404
