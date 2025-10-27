@REQ_MCA-1577
Feature: Get RACING SESSION Node by ID
  As an API consumer
  I want to be able to request a specific RACING SESSION
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-1580
  Rule: Requests are rejected when there exists no RACING SESSION with the provided ID

    @TEST_MCA-1581
    Scenario: Requesting a RACING SESSION with invalid ID
      When the user requests a non-existing "RACING SESSION"
      Then the request should be rejected with status code 404
