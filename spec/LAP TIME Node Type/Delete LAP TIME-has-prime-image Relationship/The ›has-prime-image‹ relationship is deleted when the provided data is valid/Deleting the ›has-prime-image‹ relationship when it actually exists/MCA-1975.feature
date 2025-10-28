@REQ_MCA-1973
Feature: Delete LAP TIME-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-1974
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1975 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "LAP TIME" "test lap"
      And there exists a "IMAGE" "track record"
      And there exists a "has prime image" relationship "R" between "test lap" and "track record"
      When the user deletes the "has prime image" relationship between "test lap" and "track record"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
