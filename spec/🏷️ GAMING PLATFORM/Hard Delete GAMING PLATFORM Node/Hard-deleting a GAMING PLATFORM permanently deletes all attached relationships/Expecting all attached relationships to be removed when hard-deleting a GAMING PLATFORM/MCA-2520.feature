@REQ_MCA-2514
Feature: Hard Delete GAMING PLATFORM Node
  As an API contributor
  I want to be able to delete a GAMING PLATFORM
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-2519
  Rule: Hard-deleting a GAMING PLATFORM permanently deletes all attached relationships

    @TEST_MCA-2520 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a GAMING PLATFORM
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "has image" relationship "R1" for "PlayStation 5"
      And there exists a "has prime image" relationship "R2" for "PlayStation 5"
      When the user hard-deletes the "GAMING PLATFORM" "PlayStation 5"
      Then the "GAMING PLATFORM" "PlayStation 5" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
