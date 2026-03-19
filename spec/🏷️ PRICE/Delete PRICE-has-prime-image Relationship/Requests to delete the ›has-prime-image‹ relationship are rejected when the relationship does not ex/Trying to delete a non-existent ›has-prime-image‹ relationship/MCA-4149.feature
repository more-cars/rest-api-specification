@REQ_MCA-4141
Feature: Delete PRICE-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PRICES
  So I can clean up bad data or test data

  @RULE_MCA-4148
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-4149
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "PRICE" "Brand New"
      And there exists a "IMAGE" "Test price"
      And there exists NO "has prime image" relationship between "Brand New" and "Test price"
      When the user deletes the "has prime image" relationship between "Brand New" and "Test price"
      Then the request should be rejected with status code 404
