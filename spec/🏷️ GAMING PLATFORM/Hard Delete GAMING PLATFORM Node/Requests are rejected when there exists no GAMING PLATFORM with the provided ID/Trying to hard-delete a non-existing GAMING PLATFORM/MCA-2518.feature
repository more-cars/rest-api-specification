@REQ_MCA-2514
Feature: Hard Delete GAMING PLATFORM Node
  As an API contributor
  I want to be able to delete a GAMING PLATFORM
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2517
  Rule: Requests are rejected when there exists no GAMING PLATFORM with the provided ID

    @TEST_MCA-2518 @implemented
    Scenario: Trying to hard-delete a non-existing GAMING PLATFORM
      Given "GAMING PLATFORM" "PlayStation 5" does NOT exist
      When the user hard-deletes the "GAMING PLATFORM" "PlayStation 5"
      Then the request should be rejected with status code 404
