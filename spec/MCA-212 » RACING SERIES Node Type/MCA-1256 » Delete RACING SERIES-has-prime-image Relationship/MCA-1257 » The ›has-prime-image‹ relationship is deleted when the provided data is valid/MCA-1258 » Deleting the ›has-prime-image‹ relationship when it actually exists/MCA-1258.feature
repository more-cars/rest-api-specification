@REQ_MCA-1256
Feature: Delete RACING SERIES-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-1257
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1258 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "RACING SERIES" "DTM"
      And there exists a "IMAGE" "Tokyo Drift"
      And there exists a "has prime image" relationship "R" between "DTM" and "Tokyo Drift"
      When the user deletes the "has prime image" relationship between "DTM" and "Tokyo Drift"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
