@REQ_MCA-4016
Feature: Delete MODEL CAR BRAND-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MODEL CAR BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-4023
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4024
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "IMAGE" "Matchbox logo"
      And there exists NO "has image" relationship between "Hot Wheels" and "Matchbox logo"
      When the user deletes the "has image" relationship between "Hot Wheels" and "Matchbox logo"
      Then the request should be rejected with status code 404
