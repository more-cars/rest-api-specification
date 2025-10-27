@REQ_MCA-1857
Feature: Get LAP TIME Node by ID
  As an API consumer
  I want to be able to request a specific LAP TIME
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-1860
  Rule: Requests are rejected when there exists no LAP TIME with the provided ID

    @TEST_MCA-1861
    Scenario: Requesting a LAP TIME with invalid ID
      When the user requests a non-existing "LAP TIME"
      Then the request should be rejected with status code 404
