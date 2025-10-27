@REQ_MCA-563
Feature: Hard Delete COMPANY Node
  As an API contributor
  I want to be able to delete a COMPANY
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-568
  Rule: Hard-deleting a COMPANY permanently deletes all attached relationships

    @TEST_MCA-569 @implemented
    Scenario: Expecting all attached relationships to be removed when hard-deleting a COMPANY
      Given there exists a "COMPANY" "Dr. Ing. h.c. F. Porsche AG"
      And there exists a "has image" relationship "R1" for "Dr. Ing. h.c. F. Porsche AG"
      And there exists a "has prime image" relationship "R2" for "Dr. Ing. h.c. F. Porsche AG"
      When the user hard-deletes the "COMPANY" "Dr. Ing. h.c. F. Porsche AG"
      Then the "COMPANY" "Dr. Ing. h.c. F. Porsche AG" should not exist anymore
      And the relationship "R1" should not exist anymore
      And the relationship "R2" should not exist anymore
