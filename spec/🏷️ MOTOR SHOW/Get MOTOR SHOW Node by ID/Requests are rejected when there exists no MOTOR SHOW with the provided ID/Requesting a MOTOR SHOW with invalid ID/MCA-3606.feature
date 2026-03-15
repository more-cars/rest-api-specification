@REQ_MCA-3602
Feature: Get MOTOR SHOW Node by ID
  As an API consumer
  I want to be able to request a specific MOTOR SHOW
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-3605
  Rule: Requests are rejected when there exists no MOTOR SHOW with the provided ID

    @TEST_MCA-3606 @implemented
    Scenario: Requesting a MOTOR SHOW with invalid ID
      When the user requests a non-existing "MOTOR SHOW"
      Then the request should be rejected with status code 404
