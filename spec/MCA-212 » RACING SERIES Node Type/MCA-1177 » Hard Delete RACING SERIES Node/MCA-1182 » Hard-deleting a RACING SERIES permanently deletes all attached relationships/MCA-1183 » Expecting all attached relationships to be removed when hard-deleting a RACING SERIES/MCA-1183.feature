@REQ_MCA-1177
Feature: Hard Delete RACING SERIES Node
  As an API contributor
  I want to be able to delete a RACING SERIES
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1182
  Rule: Hard-deleting a RACING SERIES permanently deletes all attached relationships

    @TEST_MCA-1183 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a RACING SERIES
      Given there exists a "RACING SERIES" "DTM"
      And there exists a "has image" relationship "R1" for "DTM"
      And there exists a "has prime image" relationship "R2" for "DTM"
      When the user hard-deletes the "RACING SERIES" "DTM"
      Then the "RACING SERIES" "DTM" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
