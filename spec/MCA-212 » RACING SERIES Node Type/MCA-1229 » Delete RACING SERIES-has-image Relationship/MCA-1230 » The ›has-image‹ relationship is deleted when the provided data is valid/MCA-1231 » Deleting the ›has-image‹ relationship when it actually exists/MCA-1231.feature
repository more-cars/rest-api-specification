@REQ_MCA-1229
Feature: Delete RACING SERIES-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-1230
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1231 @implemented
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "RACING SERIES" "DTM"
      And there exists a "IMAGE" "Formula 1 logo"
      And there exists a "has image" relationship "R" between "DTM" and "Formula 1 logo"
      When the user deletes the "has image" relationship between "DTM" and "Formula 1 logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
