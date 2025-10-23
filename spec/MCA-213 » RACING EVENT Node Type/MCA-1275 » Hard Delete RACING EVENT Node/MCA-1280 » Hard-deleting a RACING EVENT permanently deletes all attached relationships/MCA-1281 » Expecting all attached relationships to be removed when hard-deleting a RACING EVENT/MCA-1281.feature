@REQ_MCA-1275
Feature: Hard Delete RACING EVENT Node
  As an API contributor
  I want to be able to delete a RACING EVENT
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1280
  Rule: Hard-deleting a RACING EVENT permanently deletes all attached relationships

    @TEST_MCA-1281 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a RACING EVENT
      Given there exists a "RACING EVENT" "DTM"
      And there exists a "has image" relationship "R1" for "DTM"
      And there exists a "has prime image" relationship "R2" for "DTM"
      When the user hard-deletes the "RACING EVENT" "DTM"
      Then the "RACING EVENT" "DTM" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
