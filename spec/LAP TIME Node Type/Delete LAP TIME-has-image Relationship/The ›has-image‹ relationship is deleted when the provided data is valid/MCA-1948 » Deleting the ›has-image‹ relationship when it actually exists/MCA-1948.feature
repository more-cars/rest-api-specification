@REQ_MCA-1946
Feature: Delete LAP TIME-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-1947
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1948
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "IMAGE" "BMW logo"
      And there exists a "has image" relationship "R" between "fastest lap" and "BMW logo"
      When the user deletes the "has image" relationship between "fastest lap" and "BMW logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
