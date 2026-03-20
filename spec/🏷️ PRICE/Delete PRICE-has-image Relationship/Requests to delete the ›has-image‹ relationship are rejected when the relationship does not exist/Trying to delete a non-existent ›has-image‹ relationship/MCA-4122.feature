@REQ_MCA-4114
Feature: Delete PRICE-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PRICES
  So I can clean up bad data or test data

  @RULE_MCA-4121
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4122 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "PRICE" "Brand New"
      And there exists a "IMAGE" "Test photo"
      And there exists NO "has image" relationship between "Brand New" and "Test photo"
      When the user deletes the "has image" relationship between "Brand New" and "Test photo"
      Then the request should be rejected with status code 404
