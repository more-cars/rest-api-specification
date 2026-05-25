@REQ_MCA-5918
Feature: Get BOOK Node by ID
  As an API consumer
  I want to be able to request a specific BOOK
  So I can find out all the details about it when I only have its ID

  @RULE_MCA-5921
  Rule: Requests are rejected when there exists no BOOK with the provided ID

    @TEST_MCA-5922 @implemented
    Scenario: Requesting a BOOK with invalid ID
      When the user requests a non-existing "BOOK"
      Then the request should be rejected with status code 404
