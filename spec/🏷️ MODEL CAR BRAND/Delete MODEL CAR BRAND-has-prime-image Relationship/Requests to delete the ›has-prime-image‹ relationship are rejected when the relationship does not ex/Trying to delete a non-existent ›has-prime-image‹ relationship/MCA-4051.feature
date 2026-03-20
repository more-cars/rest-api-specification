@REQ_MCA-4043
Feature: Delete MODEL CAR BRAND-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MODEL CAR BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-4050
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4051 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "IMAGE" "Matchbox logo"
      And there exists NO "has prime image" relationship between "Hot Wheels" and "Matchbox logo"
      When the user deletes the "has prime image" relationship between "Hot Wheels" and "Matchbox logo"
      Then the request should be rejected with status code 404
