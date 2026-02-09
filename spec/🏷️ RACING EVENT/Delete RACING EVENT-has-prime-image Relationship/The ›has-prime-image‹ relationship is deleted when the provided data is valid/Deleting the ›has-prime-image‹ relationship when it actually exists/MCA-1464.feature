@REQ_MCA-1462
Feature: Delete RACING EVENT-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1463
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1464 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "IMAGE" "DTM race"
      And there exists a "has prime image" relationship "R" between "GP Monaco" and "DTM race"
      When the user deletes the "has prime image" relationship between "GP Monaco" and "DTM race"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
