@REQ_MCA-4221
Feature: Get VIDEO Node by ID
  As an API consumer
  I want to be able to request a specific VIDEO
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-4224
  Rule: Requests are rejected when there exists no VIDEO with the provided ID

    @TEST_MCA-4225
    Scenario: Requesting a VIDEO with invalid ID
      When the user requests a non-existing "VIDEO"
      Then the request should be rejected with status code 404
