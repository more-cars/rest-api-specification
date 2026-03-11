@REQ_MCA-3393
Feature: Get PROGRAMME EPISODE Node by ID
  As an API consumer
  I want to be able to request a specific PROGRAMME EPISODE
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-3396
  Rule: Requests are rejected when there exists no PROGRAMME EPISODE with the provided ID

    @TEST_MCA-3397
    Scenario: Requesting a PROGRAMME EPISODE with invalid ID
      When the user requests a non-existing "PROGRAMME EPISODE"
      Then the request should be rejected with status code 404
