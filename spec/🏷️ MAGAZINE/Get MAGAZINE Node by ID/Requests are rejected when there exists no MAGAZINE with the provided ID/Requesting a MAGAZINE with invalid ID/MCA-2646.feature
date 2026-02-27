@REQ_MCA-2642
Feature: Get MAGAZINE Node by ID
  As an API consumer
  I want to be able to request a specific MAGAZINE
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-2645
  Rule: Requests are rejected when there exists no MAGAZINE with the provided ID

    @TEST_MCA-2646 @implemented
    Scenario: Requesting a MAGAZINE with invalid ID
      When the user requests a non-existing "MAGAZINE"
      Then the request should be rejected with status code 404
