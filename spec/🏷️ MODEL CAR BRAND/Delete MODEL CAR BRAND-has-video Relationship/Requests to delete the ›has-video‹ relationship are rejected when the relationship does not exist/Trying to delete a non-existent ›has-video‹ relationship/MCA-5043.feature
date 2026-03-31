@REQ_MCA-5035
Feature: Delete MODEL CAR BRAND-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from MODEL CAR BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-5042
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-5043
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "Hot Wheels" and "Promo Video"
      When the user deletes the "has-video" relationship between "Hot Wheels" and "Promo Video"
      Then the request should be rejected with status code 404
