@REQ_MCA-2514
Feature: Hard Delete GAMING PLATFORM Node
  As an API contributor
  I want to be able to delete a GAMING PLATFORM
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2515
  Rule: Hard-deleting a GAMING PLATFORM permanently deletes it

    @TEST_MCA-2516 @implemented
    Scenario: Hard-deleting an existing GAMING PLATFORM
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      When the user hard-deletes the "GAMING PLATFORM" "PlayStation 5"
      Then the response should return with status code 204
      And the "GAMING PLATFORM" "PlayStation 5" should not exist anymore
