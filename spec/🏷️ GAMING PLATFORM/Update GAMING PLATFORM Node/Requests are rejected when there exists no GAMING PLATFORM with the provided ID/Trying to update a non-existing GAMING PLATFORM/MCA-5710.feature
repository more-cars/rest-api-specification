@REQ_MCA-5706
Feature: Update GAMING PLATFORM Node
  As an API contributor
  I want to be able to update a GAMING PLATFORM
  So I can add missing information or fix incorrect data

  @RULE_MCA-5709
  Rule: Requests are rejected when there exists no GAMING PLATFORM with the provided ID

    @TEST_MCA-5710 @implemented
    Scenario: Trying to update a non-existing GAMING PLATFORM
      Given "GAMING PLATFORM" "PlayStation 5" does NOT exist
      When the user updates the node "PlayStation 5"
      Then the request should be rejected with status code 404
