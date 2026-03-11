@REQ_MCA-3304
Feature: Get PROGRAMME Node by ID
  As an API consumer
  I want to be able to request a specific PROGRAMME
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-3307
  Rule: Requests are rejected when there exists no PROGRAMME with the provided ID

    @TEST_MCA-3308
    Scenario: Requesting a PROGRAMME with invalid ID
      When the user requests a non-existing "PROGRAMME"
      Then the request should be rejected with status code 404
